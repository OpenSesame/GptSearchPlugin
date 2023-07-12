# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""UpsertRequest

    UpsertRequest(;
        documents=nothing,
    )

    - documents::Vector{Document}
"""
Base.@kwdef mutable struct UpsertRequest <: OpenAPI.APIModel
    documents::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{Document} }

    function UpsertRequest(documents, )
        OpenAPI.validate_property(UpsertRequest, Symbol("documents"), documents)
        return new(documents, )
    end
end # type UpsertRequest

const _property_types_UpsertRequest = Dict{Symbol,String}(Symbol("documents")=>"Vector{Document}", )
OpenAPI.property_type(::Type{ UpsertRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_UpsertRequest[name]))}

function check_required(o::UpsertRequest)
    o.documents === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ UpsertRequest }, name::Symbol, val)
end
