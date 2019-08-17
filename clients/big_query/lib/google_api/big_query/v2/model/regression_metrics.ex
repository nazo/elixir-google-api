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

defmodule GoogleApi.BigQuery.V2.Model.RegressionMetrics do
  @moduledoc """
  Evaluation metrics for regression and explicit feedback type matrix
  factorization models.

  ## Attributes

  *   `meanAbsoluteError` (*type:* `float()`, *default:* `nil`) - Mean absolute error.
  *   `meanSquaredError` (*type:* `float()`, *default:* `nil`) - Mean squared error.
  *   `meanSquaredLogError` (*type:* `float()`, *default:* `nil`) - Mean squared log error.
  *   `medianAbsoluteError` (*type:* `float()`, *default:* `nil`) - Median absolute error.
  *   `rSquared` (*type:* `float()`, *default:* `nil`) - R^2 score.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :meanAbsoluteError => float(),
          :meanSquaredError => float(),
          :meanSquaredLogError => float(),
          :medianAbsoluteError => float(),
          :rSquared => float()
        }

  field(:meanAbsoluteError)
  field(:meanSquaredError)
  field(:meanSquaredLogError)
  field(:medianAbsoluteError)
  field(:rSquared)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.RegressionMetrics do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.RegressionMetrics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.RegressionMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
