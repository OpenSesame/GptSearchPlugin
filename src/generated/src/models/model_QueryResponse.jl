# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""QueryResponse

    QueryResponse(;
        results=nothing,
    )

    - results::Vector{QueryResult}
"""
Base.@kwdef mutable struct QueryResponse <: OpenAPI.APIModel
    results::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{QueryResult} }

    function QueryResponse(results, )
        OpenAPI.validate_property(QueryResponse, Symbol("results"), results)
        return new(results, )
    end
end # type QueryResponse

const _property_types_QueryResponse = Dict{Symbol,String}(Symbol("results")=>"Vector{QueryResult}", )
OpenAPI.property_type(::Type{ QueryResponse }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QueryResponse[name]))}

function check_required(o::QueryResponse)
    o.results === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QueryResponse }, name::Symbol, val)
end
