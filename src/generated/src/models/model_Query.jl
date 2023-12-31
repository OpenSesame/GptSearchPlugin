# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Query

    Query(;
        query=nothing,
        filter=nothing,
        top_k=3,
    )

    - query::String
    - filter::DocumentMetadataFilter
    - top_k::Int64
"""
Base.@kwdef mutable struct Query <: OpenAPI.APIModel
    query::Union{Nothing, String} = nothing
    filter = nothing # spec type: Union{ Nothing, DocumentMetadataFilter }
    top_k::Union{Nothing, Int64} = 3

    function Query(query, filter, top_k, )
        OpenAPI.validate_property(Query, Symbol("query"), query)
        OpenAPI.validate_property(Query, Symbol("filter"), filter)
        OpenAPI.validate_property(Query, Symbol("top_k"), top_k)
        return new(query, filter, top_k, )
    end
end # type Query

const _property_types_Query = Dict{Symbol,String}(Symbol("query")=>"String", Symbol("filter")=>"DocumentMetadataFilter", Symbol("top_k")=>"Int64", )
OpenAPI.property_type(::Type{ Query }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Query[name]))}

function check_required(o::Query)
    o.query === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ Query }, name::Symbol, val)
end
