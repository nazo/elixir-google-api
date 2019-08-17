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

defmodule GoogleApi.BigQuery.V2.Model.BigtableOptions do
  @moduledoc """


  ## Attributes

  *   `columnFamilies` (*type:* `list(GoogleApi.BigQuery.V2.Model.BigtableColumnFamily.t)`, *default:* `nil`) - [Optional] List of column families to expose in the table schema along with their types. This list restricts the column families that can be referenced in queries and specifies their value types. You can use this list to do type conversions - see the 'type' field for more details. If you leave this list empty, all column families are present in the table schema and their values are read as BYTES. During a query only the column families referenced in that query are read from Bigtable.
  *   `ignoreUnspecifiedColumnFamilies` (*type:* `boolean()`, *default:* `nil`) - [Optional] If field is true, then the column families that are not specified in columnFamilies list are not exposed in the table schema. Otherwise, they are read with BYTES type values. The default value is false.
  *   `readRowkeyAsString` (*type:* `boolean()`, *default:* `nil`) - [Optional] If field is true, then the rowkey column families will be read and converted to string. Otherwise they are read with BYTES type values and users need to manually cast them with CAST if necessary. The default value is false.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columnFamilies => list(GoogleApi.BigQuery.V2.Model.BigtableColumnFamily.t()),
          :ignoreUnspecifiedColumnFamilies => boolean(),
          :readRowkeyAsString => boolean()
        }

  field(:columnFamilies, as: GoogleApi.BigQuery.V2.Model.BigtableColumnFamily, type: :list)
  field(:ignoreUnspecifiedColumnFamilies)
  field(:readRowkeyAsString)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.BigtableOptions do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.BigtableOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.BigtableOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
