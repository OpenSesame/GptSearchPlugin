# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""
    QueryWithEmbedding(;
        query=nothing,
        embedding=nothing,
        score=nothing,
    )

    - query::String
    - embedding::Vector{Float64}
    - score::Float64
"""
Base.@kwdef mutable struct QueryWithEmbedding <: OpenAPI.APIModel
    query::Union{Nothing, String} = nothing
    embedding::Union{Nothing, Vector{Float64}} = nothing
    score::Union{Nothing, Float64} = nothing

    function QueryWithEmbedding(query, embedding, score, )
        OpenAPI.validate_property(QueryWithEmbedding, Symbol("query"), query)
        OpenAPI.validate_property(QueryWithEmbedding, Symbol("embedding"), embedding)
        OpenAPI.validate_property(QueryWithEmbedding, Symbol("score"), score)
        return new(query, embedding, score, )
    end
end # type QueryWithEmbedding

const _property_types_QueryWithEmbedding = Dict{Symbol,String}(Symbol("query")=>"String", Symbol("embedding")=>"Vector{Float64}", Symbol("score")=>"Float64", )
OpenAPI.property_type(::Type{ QueryWithEmbedding }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_QueryWithEmbedding[name]))}

function check_required(o::QueryWithEmbedding)
    o.query === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ QueryWithEmbedding }, name::Symbol, val)
end
