# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.BigQuery.V2.Model.QueryResponse do
  @moduledoc """


  ## Attributes

  *   `cacheHit` (*type:* `boolean()`, *default:* `nil`) - Whether the query result was fetched from the query cache.
  *   `errors` (*type:* `list(GoogleApi.BigQuery.V2.Model.ErrorProto.t)`, *default:* `nil`) - [Output-only] The first errors or warnings encountered during the running of the job. The final message includes the number of errors that caused the process to stop. Errors here do not necessarily mean that the job has completed or was unsuccessful.
  *   `jobComplete` (*type:* `boolean()`, *default:* `nil`) - Whether the query has completed or not. If rows or totalRows are present, this will always be true. If this is false, totalRows will not be available.
  *   `jobReference` (*type:* `GoogleApi.BigQuery.V2.Model.JobReference.t`, *default:* `nil`) - Reference to the Job that was created to run the query. This field will be present even if the original request timed out, in which case GetQueryResults can be used to read the results once the query has completed. Since this API only returns the first page of results, subsequent pages can be fetched via the same mechanism (GetQueryResults).
  *   `kind` (*type:* `String.t`, *default:* `bigquery#queryResponse`) - The resource type.
  *   `numDmlAffectedRows` (*type:* `String.t`, *default:* `nil`) - [Output-only] The number of rows affected by a DML statement. Present only for DML statements INSERT, UPDATE or DELETE.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - A token used for paging results.
  *   `rows` (*type:* `list(GoogleApi.BigQuery.V2.Model.TableRow.t)`, *default:* `nil`) - An object with as many results as can be contained within the maximum permitted reply size. To get any additional rows, you can call GetQueryResults and specify the jobReference returned above.
  *   `schema` (*type:* `GoogleApi.BigQuery.V2.Model.TableSchema.t`, *default:* `nil`) - The schema of the results. Present only when the query completes successfully.
  *   `totalBytesProcessed` (*type:* `String.t`, *default:* `nil`) - The total number of bytes processed for this query. If this query was a dry run, this is the number of bytes that would be processed if the query were run.
  *   `totalRows` (*type:* `String.t`, *default:* `nil`) - The total number of rows in the complete query result set, which can be more than the number of rows in this single page of results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cacheHit => boolean(),
          :errors => list(GoogleApi.BigQuery.V2.Model.ErrorProto.t()),
          :jobComplete => boolean(),
          :jobReference => GoogleApi.BigQuery.V2.Model.JobReference.t(),
          :kind => String.t(),
          :numDmlAffectedRows => String.t(),
          :pageToken => String.t(),
          :rows => list(GoogleApi.BigQuery.V2.Model.TableRow.t()),
          :schema => GoogleApi.BigQuery.V2.Model.TableSchema.t(),
          :totalBytesProcessed => String.t(),
          :totalRows => String.t()
        }

  field(:cacheHit)
  field(:errors, as: GoogleApi.BigQuery.V2.Model.ErrorProto, type: :list)
  field(:jobComplete)
  field(:jobReference, as: GoogleApi.BigQuery.V2.Model.JobReference)
  field(:kind)
  field(:numDmlAffectedRows)
  field(:pageToken)
  field(:rows, as: GoogleApi.BigQuery.V2.Model.TableRow, type: :list)
  field(:schema, as: GoogleApi.BigQuery.V2.Model.TableSchema)
  field(:totalBytesProcessed)
  field(:totalRows)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.QueryResponse do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.QueryResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.QueryResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
