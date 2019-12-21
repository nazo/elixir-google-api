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

defmodule GoogleApi.Compute.V1.Model.HttpRouteRuleMatch do
  @moduledoc """
  HttpRouteRuleMatch specifies a set of criteria for matching requests to an HttpRouteRule. All specified criteria must be satisfied for a match to occur.

  ## Attributes

  *   `fullPathMatch` (*type:* `String.t`, *default:* `nil`) - For satisfying the matchRule condition, the path of the request must exactly match the value specified in fullPathMatch after removing any query parameters and anchor that may be part of the original URL.
      fullPathMatch must be between 1 and 1024 characters.
      Only one of prefixMatch, fullPathMatch or regexMatch must be specified.
  *   `headerMatches` (*type:* `list(GoogleApi.Compute.V1.Model.HttpHeaderMatch.t)`, *default:* `nil`) - Specifies a list of header match criteria, all of which must match corresponding headers in the request.
  *   `ignoreCase` (*type:* `boolean()`, *default:* `nil`) - Specifies that prefixMatch and fullPathMatch matches are case sensitive.
      The default value is false.
      ignoreCase must not be used with regexMatch.
  *   `metadataFilters` (*type:* `list(GoogleApi.Compute.V1.Model.MetadataFilter.t)`, *default:* `nil`) - Opaque filter criteria used by Loadbalancer to restrict routing configuration to a limited set of xDS compliant clients. In their xDS requests to Loadbalancer, xDS clients present node metadata. If a match takes place, the relevant routing configuration is made available to those proxies.
      For each metadataFilter in this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the filterLabels must match the corresponding label provided in the metadata. If its filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match with corresponding labels provided in the metadata.
      metadataFilters specified here will be applied after those specified in ForwardingRule that refers to the UrlMap this HttpRouteRuleMatch belongs to.
      metadataFilters only applies to Loadbalancers that have their loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  *   `prefixMatch` (*type:* `String.t`, *default:* `nil`) - For satisfying the matchRule condition, the request's path must begin with the specified prefixMatch. prefixMatch must begin with a /.
      The value must be between 1 and 1024 characters.
      Only one of prefixMatch, fullPathMatch or regexMatch must be specified.
  *   `queryParameterMatches` (*type:* `list(GoogleApi.Compute.V1.Model.HttpQueryParameterMatch.t)`, *default:* `nil`) - Specifies a list of query parameter match criteria, all of which must match corresponding query parameters in the request.
  *   `regexMatch` (*type:* `String.t`, *default:* `nil`) - For satisfying the matchRule condition, the path of the request must satisfy the regular expression specified in regexMatch after removing any query parameters and anchor supplied with the original URL. For regular expression grammar please see en.cppreference.com/w/cpp/regex/ecmascript 
      Only one of prefixMatch, fullPathMatch or regexMatch must be specified.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fullPathMatch => String.t(),
          :headerMatches => list(GoogleApi.Compute.V1.Model.HttpHeaderMatch.t()),
          :ignoreCase => boolean(),
          :metadataFilters => list(GoogleApi.Compute.V1.Model.MetadataFilter.t()),
          :prefixMatch => String.t(),
          :queryParameterMatches => list(GoogleApi.Compute.V1.Model.HttpQueryParameterMatch.t()),
          :regexMatch => String.t()
        }

  field(:fullPathMatch)
  field(:headerMatches, as: GoogleApi.Compute.V1.Model.HttpHeaderMatch, type: :list)
  field(:ignoreCase)
  field(:metadataFilters, as: GoogleApi.Compute.V1.Model.MetadataFilter, type: :list)
  field(:prefixMatch)

  field(:queryParameterMatches,
    as: GoogleApi.Compute.V1.Model.HttpQueryParameterMatch,
    type: :list
  )

  field(:regexMatch)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.HttpRouteRuleMatch do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.HttpRouteRuleMatch.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.HttpRouteRuleMatch do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
