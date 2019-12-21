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

defmodule GoogleApi.Compute.V1.Model.NodeTemplate do
  @moduledoc """
  Represent a sole-tenant Node Template resource.

  You can use a template to define properties for nodes in a node group. For more information, read Creating node groups and instances. (== resource_for beta.nodeTemplates ==) (== resource_for v1.nodeTemplates ==)

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#nodeTemplate`) - [Output Only] The type of the resource. Always compute#nodeTemplate for node templates.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `nodeAffinityLabels` (*type:* `map()`, *default:* `nil`) - Labels to use for node affinity, which will be used in instance scheduling.
  *   `nodeType` (*type:* `String.t`, *default:* `nil`) - The node type to use for nodes group that are created from this template.
  *   `nodeTypeFlexibility` (*type:* `GoogleApi.Compute.V1.Model.NodeTemplateNodeTypeFlexibility.t`, *default:* `nil`) - The flexible properties of the desired node type. Node groups that use this node template will create nodes of a type that matches these properties.

      This field is mutually exclusive with the node_type property; you can only define one or the other, but not both.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] The name of the region where the node template resides, such as us-central1.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `serverBinding` (*type:* `GoogleApi.Compute.V1.Model.ServerBinding.t`, *default:* `nil`) - Sets the binding properties for the physical server. Valid values include:  
      - [Default] RESTART_NODE_ON_ANY_SERVER: Restarts VMs on any available physical server 
      - RESTART_NODE_ON_MINIMAL_SERVER: Restarts VMs on the same physical server whenever possible  

      See Sole-tenant node options for more information.
  *   `status` (*type:* `String.t`, *default:* `nil`) - [Output Only] The status of the node template. One of the following values: CREATING, READY, and DELETING.
  *   `statusMessage` (*type:* `String.t`, *default:* `nil`) - [Output Only] An optional, human-readable explanation of the status.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t(),
          :description => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :nodeAffinityLabels => map(),
          :nodeType => String.t(),
          :nodeTypeFlexibility => GoogleApi.Compute.V1.Model.NodeTemplateNodeTypeFlexibility.t(),
          :region => String.t(),
          :selfLink => String.t(),
          :serverBinding => GoogleApi.Compute.V1.Model.ServerBinding.t(),
          :status => String.t(),
          :statusMessage => String.t()
        }

  field(:creationTimestamp)
  field(:description)
  field(:id)
  field(:kind)
  field(:name)
  field(:nodeAffinityLabels, type: :map)
  field(:nodeType)
  field(:nodeTypeFlexibility, as: GoogleApi.Compute.V1.Model.NodeTemplateNodeTypeFlexibility)
  field(:region)
  field(:selfLink)
  field(:serverBinding, as: GoogleApi.Compute.V1.Model.ServerBinding)
  field(:status)
  field(:statusMessage)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NodeTemplate do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NodeTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NodeTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
