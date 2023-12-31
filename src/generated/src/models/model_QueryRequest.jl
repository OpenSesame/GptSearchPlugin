# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""QueryRequest

    QueryRequest(;
        queries=nothing,
    )

    - queries::Vector{Query}
"""
Base.@kwdef mutable struct QueryRequest <: OpenAPI.APIModel
    queries::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{Query} }

    function QueryRequest(queries, )
        OpenAPI.validate_property(QueryRequest, Symbol("queries"), queries)
        return new(queries, )
    end
end # type QueryRequest

const _property_types_QueryRequest = Dict{Symbol,String}(Symbol("queries")=>"Vector{Query}", )
OpenAPI.property_type(::Type{ QueryRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QueryRequest[name]))}

function check_required(o::QueryRequest)
    o.queries === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QueryRequest }, name::Symbol, val)
end
