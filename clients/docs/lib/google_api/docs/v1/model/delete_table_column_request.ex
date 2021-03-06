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

defmodule GoogleApi.Docs.V1.Model.DeleteTableColumnRequest do
  @moduledoc """
  Deletes a column from a table.

  ## Attributes

  *   `tableCellLocation` (*type:* `GoogleApi.Docs.V1.Model.TableCellLocation.t`, *default:* `nil`) - The reference table cell location from which the column will be deleted.

      The column this cell spans will be deleted. If this is a merged cell that
      spans multiple columns, all columns that the cell spans will be deleted. If
      no columns remain in the table after this deletion, the whole table is
      deleted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :tableCellLocation => GoogleApi.Docs.V1.Model.TableCellLocation.t()
        }

  field(:tableCellLocation, as: GoogleApi.Docs.V1.Model.TableCellLocation)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.DeleteTableColumnRequest do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.DeleteTableColumnRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.DeleteTableColumnRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
