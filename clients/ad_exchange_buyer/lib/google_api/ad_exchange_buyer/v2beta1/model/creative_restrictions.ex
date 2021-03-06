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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.CreativeRestrictions do
  @moduledoc """
  Represents creative restrictions associated to Programmatic Guaranteed/
  Preferred Deal in Ad Manager.
  This doesn't apply to Private Auction and AdX Preferred Deals.

  ## Attributes

  *   `creativeFormat` (*type:* `String.t`, *default:* `nil`) - The format of the environment that the creatives will be displayed in.
  *   `creativeSpecifications` (*type:* `list(GoogleApi.AdExchangeBuyer.V2beta1.Model.CreativeSpecification.t)`, *default:* `nil`) - 
  *   `skippableAdType` (*type:* `String.t`, *default:* `nil`) - Skippable video ads allow viewers to skip ads after 5 seconds.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creativeFormat => String.t(),
          :creativeSpecifications =>
            list(GoogleApi.AdExchangeBuyer.V2beta1.Model.CreativeSpecification.t()),
          :skippableAdType => String.t()
        }

  field(:creativeFormat)

  field(:creativeSpecifications,
    as: GoogleApi.AdExchangeBuyer.V2beta1.Model.CreativeSpecification,
    type: :list
  )

  field(:skippableAdType)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.CreativeRestrictions do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.CreativeRestrictions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.CreativeRestrictions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
