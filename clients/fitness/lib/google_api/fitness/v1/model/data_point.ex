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

defmodule GoogleApi.Fitness.V1.Model.DataPoint do
  @moduledoc """
  Represents a single data point, generated by a particular data source. A data point holds a value for each field, an end timestamp and an optional start time. The exact semantics of each of these attributes are specified in the documentation for the particular data type.

  A data point can represent an instantaneous measurement, reading or input observation, as well as averages or aggregates over a time interval. Check the data type documentation to determine which is the case for a particular data type.

  Data points always contain one value for each field of the data type.

  ## Attributes

  *   `computationTimeMillis` (*type:* `String.t`, *default:* `nil`) - DO NOT USE THIS FIELD. It is ignored, and not stored.
  *   `dataTypeName` (*type:* `String.t`, *default:* `nil`) - The data type defining the format of the values in this data point.
  *   `endTimeNanos` (*type:* `String.t`, *default:* `nil`) - The end time of the interval represented by this data point, in nanoseconds since epoch.
  *   `modifiedTimeMillis` (*type:* `String.t`, *default:* `nil`) - Indicates the last time this data point was modified. Useful only in contexts where we are listing the data changes, rather than representing the current state of the data.
  *   `originDataSourceId` (*type:* `String.t`, *default:* `nil`) - If the data point is contained in a dataset for a derived data source, this field will be populated with the data source stream ID that created the data point originally.

      WARNING: do not rely on this field for anything other than debugging. The value of this field, if it is set at all, is an implementation detail and is not guaranteed to remain consistent.
  *   `rawTimestampNanos` (*type:* `String.t`, *default:* `nil`) - The raw timestamp from the original SensorEvent.
  *   `startTimeNanos` (*type:* `String.t`, *default:* `nil`) - The start time of the interval represented by this data point, in nanoseconds since epoch.
  *   `value` (*type:* `list(GoogleApi.Fitness.V1.Model.Value.t)`, *default:* `nil`) - Values of each data type field for the data point. It is expected that each value corresponding to a data type field will occur in the same order that the field is listed with in the data type specified in a data source.

      Only one of integer and floating point fields will be populated, depending on the format enum value within data source's type field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :computationTimeMillis => String.t(),
          :dataTypeName => String.t(),
          :endTimeNanos => String.t(),
          :modifiedTimeMillis => String.t(),
          :originDataSourceId => String.t(),
          :rawTimestampNanos => String.t(),
          :startTimeNanos => String.t(),
          :value => list(GoogleApi.Fitness.V1.Model.Value.t())
        }

  field(:computationTimeMillis)
  field(:dataTypeName)
  field(:endTimeNanos)
  field(:modifiedTimeMillis)
  field(:originDataSourceId)
  field(:rawTimestampNanos)
  field(:startTimeNanos)
  field(:value, as: GoogleApi.Fitness.V1.Model.Value, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Fitness.V1.Model.DataPoint do
  def decode(value, options) do
    GoogleApi.Fitness.V1.Model.DataPoint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Fitness.V1.Model.DataPoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
