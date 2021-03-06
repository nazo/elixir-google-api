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

defmodule GoogleApi.YouTube.V3.Model.VideoTopicDetails do
  @moduledoc """
  Freebase topic information related to the video.

  ## Attributes

  *   `relevantTopicIds` (*type:* `list(String.t)`, *default:* `nil`) - Similar to topic_id, except that these topics are merely relevant to the video. These are topics that may be mentioned in, or appear in the video. You can retrieve information about each topic using Freebase Topic API.
  *   `topicCategories` (*type:* `list(String.t)`, *default:* `nil`) - A list of Wikipedia URLs that provide a high-level description of the video's content.
  *   `topicIds` (*type:* `list(String.t)`, *default:* `nil`) - A list of Freebase topic IDs that are centrally associated with the video. These are topics that are centrally featured in the video, and it can be said that the video is mainly about each of these. You can retrieve information about each topic using the Freebase Topic API.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :relevantTopicIds => list(String.t()),
          :topicCategories => list(String.t()),
          :topicIds => list(String.t())
        }

  field(:relevantTopicIds, type: :list)
  field(:topicCategories, type: :list)
  field(:topicIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoTopicDetails do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.VideoTopicDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.VideoTopicDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
