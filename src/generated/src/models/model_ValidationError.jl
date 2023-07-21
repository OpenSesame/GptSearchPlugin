# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ValidationError

    ValidationError(;
        loc=nothing,
        msg=nothing,
        type=nothing,
    )

    - loc::Vector{LocationInner}
    - msg::String
    - type::String
"""
Base.@kwdef mutable struct ValidationError <: OpenAPI.APIModel
    loc::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{LocationInner} }
    msg::Union{Nothing, String} = nothing
    type::Union{Nothing, String} = nothing

    function ValidationError(loc, msg, type, )
        OpenAPI.validate_property(ValidationError, Symbol("loc"), loc)
        OpenAPI.validate_property(ValidationError, Symbol("msg"), msg)
        OpenAPI.validate_property(ValidationError, Symbol("type"), type)
        return new(loc, msg, type, )
    end
end # type ValidationError

const _property_types_ValidationError = Dict{Symbol,String}(Symbol("loc")=>"Vector{LocationInner}", Symbol("msg")=>"String", Symbol("type")=>"String", )
OpenAPI.property_type(::Type{ ValidationError }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ValidationError[name]))}

function check_required(o::ValidationError)
    o.loc === nothing && (return false)
    o.msg === nothing && (return false)
    o.type === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ ValidationError }, name::Symbol, val)
end