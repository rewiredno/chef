#
# Copyright:: Copyright 2018-2018, Chef Software Inc.
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

module ChefUtils
  module Platform
    extend self
    #
    # NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
    #
    # When adding platforms which are the same name as the platform_family
    # please add them to the platform_family helpers.  Resolve the namespace
    # collision by adding a `_platform?` suffix here.  So we have the
    # debian? platform_family helper and the debian_platform?, ubuntu? and
    # linuxmint? platform helpers.
    #
    # This encourages the use of the platform family via the shorter name and
    # is backwards compatible with the chef-sugar usage.
    #
    # This encourages the use of the platform_family helpers where after adding
    # a new platform to a platform_family the existing code MAY work unchanged,
    # while with the use of a platform matcher the existing code will ALWAYS
    # be guaranteed to fail and must be updated.
    #

    #
    # Determine if the current node is linux mint.
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def linuxmint?(node = Internal.getnode)
      node["platform"] == "linuxmint"
    end
    # chef-sugar backcompat methods
    alias_method :mint?, :linuxmint?
    alias_method :linux_mint?, :linuxmint?

    #
    # Determine if the current node is ubuntu.
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def ubuntu?(node = Internal.getnode)
      node["platform"] == "ubuntu"
    end

    #
    # Determine if the current node is raspbian.
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def raspbian?(node = Internal.getnode)
      node["platform"] == "raspbian"
    end

    #
    # Determine if the current node is debian.
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def debian_platform?(node = Internal.getnode)
      node["platform"] == "debian"
    end

    #
    # Determine if the current node is amazon linux.
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def amazon?(node = Internal.getnode)
      node["platform"] == "amazon"
    end
    # chef-sugar backcompat methods
    alias_method :amazon_linux?, :amazon?

    #
    # Determine if the current node is centos.
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def centos?(node = Internal.getnode)
      node["platform"] == "centos"
    end

    #
    # Determine if the current node is oracle linux.
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def oracle?(node = Internal.getnode)
      node["platform"] == "oracle"
    end
    # chef-sugar backcompat methods
    alias_method :oracle_linux?, :oracle?

    #
    # Determine if the current node is scientific linux.
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def scientific?(node = Internal.getnode)
      node["platform"] == "scientific"
    end
    # chef-sugar backcompat methods
    alias_method :scientific_linux?, :scientific?

    #
    # Determine if the current node is redhat enterprise.
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def redhat?(node = Internal.getnode)
      node["platform"] == "redhat"
    end
    # chef-sugar backcompat methods
    alias_method :redhat_enterprise?, :redhat?
    alias_method :redhat_enterprise_linux?, :redhat?

    # Determine if the current node is solaris2
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def solaris2_platform?(node = Internal.getnode)
      node["platform"] == "solaris2"
    end

    # Determine if the current node is smartos
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def smartos?(node = Internal.getnode)
      node["platform"] == "smartos"
    end

    # Determine if the current node is omnios
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def omnios?(node = Internal.getnode)
      node["platform"] == "omnios"
    end

    # Determine if the current node is openindiana
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def openindiana?(node = Internal.getnode)
      node["platform"] == "openindiana"
    end

    # Determine if the current node is opensolaris
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def opensolaris?(node = Internal.getnode)
      node["platform"] == "opensolaris"
    end

    # Determine if the current node is nexentacore
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def nexentacore?(node = Internal.getnode)
      node["platform"] == "nexentacore"
    end

    # Determine if the current node is aix
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def aix_platform?(node = Internal.getnode)
      node["platform"] == "aix"
    end

    # Determine if the current node is freebsd
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def freebsd_platform?(node = Internal.getnode)
      node["platform"] == "freebsd"
    end

    # Determine if the current node is openbsd
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def openbsd_platform?(node = Internal.getnode)
      node["platform"] == "openbsd"
    end

    # Determine if the current node is netbsd
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def netbsd_platform?(node = Internal.getnode)
      node["platform"] == "netbsd"
    end

    # Determine if the current node is dragonflybsd
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def dragonflybsd_platform?(node = Internal.getnode)
      node["platform"] == "dragonflybsd"
    end

    # Determine if the current node is MacOS.
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def mac_os_x_platform?(node = Internal.getnode)
      node["platform"] == "mac_os_x"
    end

    # Determine if the current node is gentoo
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def gentoo_platform?(node = Internal.getnode)
      node["platform"] == "gentoo"
    end

    # Determine if the current node is slackware.
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def slackware_platform?(node = Internal.getnode)
      node["platform"] == "slackware"
    end

    # Determine if the current node is SuSE.
    #
    # @param [Chef::Node] node
    #
    # @return [Boolean]
    #
    def suse_platform?(node = Internal.getnode)
      node["platform"] == "suse"
    end

    # FIXME FIXME FIXME: all the rest of the platforms
  end
end
