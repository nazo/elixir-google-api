# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Prediction.V16.Model.AnalyzeModelDescription do
  @moduledoc """
  Description of the model.

  ## Attributes

  - confusionMatrix (Map[String, Map[String, String]]): An output confusion matrix. This shows an estimate for how this model will do in predictions. This is first indexed by the true class label. For each true class label, this provides a pair {predicted_label, count}, where count is the estimated number of times the model will predict the predicted label given the true label. Will not output if more then 100 classes (Categorical models only). Defaults to: `null`.
  - confusionMatrixRowTotals (Map[String, String]): A list of the confusion matrix row totals. Defaults to: `null`.
  - modelinfo (Insert2): Basic information about the model. Defaults to: `null`.
  """

  defstruct [
    :"confusionMatrix",
    :"confusionMatrixRowTotals",
    :"modelinfo"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Prediction.V16.Model.AnalyzeModelDescription do
  import GoogleApi.Prediction.V16.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"modelinfo", :struct, GoogleApi.Prediction.V16.Model.Insert2, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Prediction.V16.Model.AnalyzeModelDescription do
  def encode(value, options) do
    GoogleApi.Prediction.V16.Deserializer.serialize_non_nil(value, options)
  end
end

