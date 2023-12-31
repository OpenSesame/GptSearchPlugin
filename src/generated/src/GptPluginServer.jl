# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""
Encapsulates generated server code for GptPluginServer

The following server methods must be implemented:

- **delete_docs**
    - *invocation:* DELETE /delete
    - *signature:* delete_docs(req::HTTP.Request, delete_request::DeleteRequest;) -> DeleteResponse
- **query_post**
    - *invocation:* POST /query
    - *signature:* query_post(req::HTTP.Request, query_request::QueryRequest;) -> QueryResponse
- **upsert_post**
    - *invocation:* POST /upsert
    - *signature:* upsert_post(req::HTTP.Request, upsert_request::UpsertRequest;) -> UpsertResponse
"""
module GptPluginServer

using HTTP
using URIs
using Dates
using TimeZones
using OpenAPI
using OpenAPI.Servers

const API_VERSION = "1.0.0"

include("modelincludes.jl")

include("apis/api_DefaultApi.jl")

"""
Register handlers for all APIs in this module in the supplied `Router` instance.

Paramerets:
- `router`: Router to register handlers in
- `impl`: module that implements the server methods

Optional parameters:
- `path_prefix`: prefix to be applied to all paths
- `optional_middlewares`: Register one or more optional middlewares to be applied to all requests.

Optional middlewares can be one or more of:
    - `init`: called before the request is processed
    - `pre_validation`: called after the request is parsed but before validation
    - `pre_invoke`: called after validation but before the handler is invoked
    - `post_invoke`: called after the handler is invoked but before the response is sent

The order in which middlewares are invoked are:
`init |> read |> pre_validation |> validate |> pre_invoke |> invoke |> post_invoke`
"""
function register(router::HTTP.Router, impl; path_prefix::String="", optional_middlewares...)
    registerDefaultApi(router, impl; path_prefix=path_prefix, optional_middlewares...)
    return router
end

# export models
export DeleteRequest
export DeleteResponse
export Document
export DocumentChunk
export DocumentChunkMetadata
export DocumentChunkWithScore
export DocumentMetadata
export DocumentMetadataFilter
export HTTPValidationError
export LocationInner
export Query
export QueryRequest
export QueryResponse
export QueryResult
export QueryWithEmbedding
export Source
export UpsertRequest
export UpsertResponse
export ValidationError

end # module GptPluginServer
