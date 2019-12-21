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

defmodule GoogleApi.Compute.V1.Model.AttachedDiskInitializeParams do
  @moduledoc """
  [Input Only] Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance.

  This property is mutually exclusive with the source property; you can only define one or the other, but not both.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description. Provide this property when creating the disk.
  *   `diskName` (*type:* `String.t`, *default:* `nil`) - Specifies the disk name. If not specified, the default is to use the name of the instance. If the disk with the instance name exists already in the given zone/region, a new name will be automatically generated.
  *   `diskSizeGb` (*type:* `String.t`, *default:* `nil`) - Specifies the size of the disk in base-2 GB. The size must be at least 10 GB. If you specify a sourceImage, which is required for boot disks, the default size is the size of the sourceImage. If you do not specify a sourceImage, the default disk size is 500 GB.
  *   `diskType` (*type:* `String.t`, *default:* `nil`) - Specifies the disk type to use to create the instance. If not specified, the default is pd-standard, specified using the full URL. For example:
      https://www.googleapis.com/compute/v1/projects/project/zones/zone/diskTypes/pd-standard


      Other values include pd-ssd and local-ssd. If you define this field, you can provide either the full or partial URL. For example, the following are valid values:  
      - https://www.googleapis.com/compute/v1/projects/project/zones/zone/diskTypes/diskType 
      - projects/project/zones/zone/diskTypes/diskType 
      - zones/zone/diskTypes/diskType  Note that for InstanceTemplate, this is the name of the disk type, not URL.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels to apply to this disk. These can be later modified by the disks.setLabels method. This field is only applicable for persistent disks.
  *   `resourcePolicies` (*type:* `list(String.t)`, *default:* `nil`) - Resource policies applied to this disk for automatic snapshot creations. Specified using the full or partial URL. For instance template, specify only the resource policy name.
  *   `sourceImage` (*type:* `String.t`, *default:* `nil`) - The source image to create this disk. When creating a new instance, one of initializeParams.sourceImage or initializeParams.sourceSnapshot or disks.source is required except for local SSD.

      To create a disk with one of the public operating system images, specify the image by its family name. For example, specify family/debian-9 to use the latest Debian 9 image:
      projects/debian-cloud/global/images/family/debian-9


      Alternatively, use a specific version of a public operating system image:
      projects/debian-cloud/global/images/debian-9-stretch-vYYYYMMDD


      To create a disk with a custom image that you created, specify the image name in the following format:
      global/images/my-custom-image


      You can also specify a custom image by its image family, which returns the latest version of the image in that family. Replace the image name with family/family-name:
      global/images/family/my-image-family


      If the source image is deleted later, this field will not be set.
  *   `sourceImageEncryptionKey` (*type:* `GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t`, *default:* `nil`) - The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key.

      Instance templates do not store customer-supplied encryption keys, so you cannot create disks for instances in a managed instance group if the source images are encrypted with your own keys.
  *   `sourceSnapshot` (*type:* `String.t`, *default:* `nil`) - The source snapshot to create this disk. When creating a new instance, one of initializeParams.sourceSnapshot or initializeParams.sourceImage or disks.source is required except for local SSD.

      To create a disk with a snapshot that you created, specify the snapshot name in the following format:
      global/snapshots/my-backup


      If the source snapshot is deleted later, this field will not be set.
  *   `sourceSnapshotEncryptionKey` (*type:* `GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t`, *default:* `nil`) - The customer-supplied encryption key of the source snapshot.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :diskName => String.t(),
          :diskSizeGb => String.t(),
          :diskType => String.t(),
          :labels => map(),
          :resourcePolicies => list(String.t()),
          :sourceImage => String.t(),
          :sourceImageEncryptionKey => GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t(),
          :sourceSnapshot => String.t(),
          :sourceSnapshotEncryptionKey => GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t()
        }

  field(:description)
  field(:diskName)
  field(:diskSizeGb)
  field(:diskType)
  field(:labels, type: :map)
  field(:resourcePolicies, type: :list)
  field(:sourceImage)
  field(:sourceImageEncryptionKey, as: GoogleApi.Compute.V1.Model.CustomerEncryptionKey)
  field(:sourceSnapshot)
  field(:sourceSnapshotEncryptionKey, as: GoogleApi.Compute.V1.Model.CustomerEncryptionKey)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.AttachedDiskInitializeParams do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.AttachedDiskInitializeParams.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.AttachedDiskInitializeParams do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
