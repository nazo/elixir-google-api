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

defmodule GoogleApi.Content.V2.Model.AccountIdentifier do
  @moduledoc """


  ## Attributes

  *   `aggregatorId` (*type:* `String.t`, *default:* `nil`) - The aggregator ID, set for aggregators and subaccounts (in that case, it represents the aggregator of the subaccount).
  *   `merchantId` (*type:* `String.t`, *default:* `nil`) - The merchant account ID, set for individual accounts and subaccounts.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregatorId => String.t(),
          :merchantId => String.t()
        }

  field(:aggregatorId)
  field(:merchantId)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.AccountIdentifier do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.AccountIdentifier.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.AccountIdentifier do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
