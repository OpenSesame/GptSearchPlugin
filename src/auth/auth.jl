using HTTP

function get_auth_middleware(except_list::AbstractSet)::Union{Function,Nothing}
    auth = nothing
    bearer_token = get(ENV, "BEARER_TOKEN", nothing)
    if !isnothing(bearer_token) && !isempty(bearer_token)
        auth = req -> validate_bearer_token(req, bearer_token, except_list)
    end

    return isnothing(auth) ?
           nothing :
           handler -> req -> auth(req) ?
                             handler(req) :
                             return HTTP.Response(401)
end

"""
User authentication

Check Bearer token
"""
function validate_bearer_token(
    req::HTTP.Messages.Request, token::String, except_list::AbstractSet
)::Bool
    req.target in except_list && return true

    auth_header_index = findfirst(req.headers) do (title, _)
        isequal(lowercase(title), "authorization")
    end

    isnothing(auth_header_index) && return false

    auth_text = last(req.headers[auth_header_index])

    m = match(r"^Bearer[\t ]([\w\._-]*)\z", auth_text)
    (isnothing(m) || isempty(m.captures)) && return false

    found_token = first(m.captures)

    return isequal(token, found_token)
end
