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

defmodule GoogleApi.CloudRun.V1alpha1.Model.Destination do
  @moduledoc """


  ## Attributes

  *   `ref` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.ObjectReference.t`, *default:* `nil`) - ObjectReference points to an Addressable.
      + optional
  *   `uri` (*type:* `String.t`, *default:* `nil`) - URI is for direct URI Designations or used with the resulting URL from
      Addressable ObjectReference. If used with an ObjectReference, will be
      appended to the path of the resulting URL from the Addressable.
      + optional
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ref => GoogleApi.CloudRun.V1alpha1.Model.ObjectReference.t(),
          :uri => String.t()
        }

  field(:ref, as: GoogleApi.CloudRun.V1alpha1.Model.ObjectReference)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.Destination do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.Destination.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.Destination do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
