#
# Copyright:: Copyright 2015-2018, Chef Software Inc.
# License:: Apache License, Version 2.0
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
#

require "chef-utils/architecture"
require "chef-utils/os"
require "chef-utils/platform_family"
require "chef-utils/platform"
require "chef-utils/introspection"
require "chef-utils/service"
require "chef-utils/which"
require "chef-utils/path_sanity"

module ChefUtils
  # FIXME: we need a policy around when we can add methods here and should probably be careful
  # since this is likely to become breaking changes by injecting methods everywhere.
  extend ChefUtils::Architecture
  extend ChefUtils::OS
  extend ChefUtils::PlatformFamily
  extend ChefUtils::Platform
  extend ChefUtils::Introspection
  # extend ChefUtils::Which
  # extend ChefUtils::PathSanity
  include ChefUtils::Architecture
  include ChefUtils::OS
  include ChefUtils::PlatformFamily
  include ChefUtils::Platform
  include ChefUtils::Introspection
  # include ChefUtils::Which
  # include ChefUtils::PathSanity
  # ChefUtils::Internal is deliberately excluded
  # ChefUtils::Service is deliberately excluded
end
