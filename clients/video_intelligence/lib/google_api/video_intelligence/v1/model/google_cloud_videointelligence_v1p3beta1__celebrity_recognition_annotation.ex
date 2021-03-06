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

defmodule GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation do
  @moduledoc """
  Celebrity recognition annotation per video.

  ## Attributes

  *   `celebrityTracks` (*type:* `list(GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack.t)`, *default:* `nil`) - The tracks detected from the input video, including recognized celebrities
      and other detected faces in the video.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Feature version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :celebrityTracks =>
            list(
              GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack.t()
            ),
          :version => String.t()
        }

  field(:celebrityTracks,
    as: GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack,
    type: :list
  )

  field(:version)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation do
  def decode(value, options) do
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.VideoIntelligence.V1.Model.GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
