require "spec_helper"
require "fauxhai"

RSpec.describe ChefUtils::Platform do
  let(:node) { Fauxhai.mock(options).data }

  context "on ubuntu 18.04" do
    let(:options) { { platform: "ubuntu", version: "18.04" } }

    it "works" do
      expect(described_class.ubuntu?(node)).to be true
      expect(described_class.debian_platform?(node)).to be false
      expect(described_class.linuxmint?(node)).to be false
      expect(described_class.raspbian?(node)).to be false
    end
  end

  context "on raspbian 8.0" do
    let(:options) { { platform: "raspbian", version: "8.0" } }
  end

  context "on linuxmint 19.0" do
    let(:options) { { platform: "linuxmint", version: "19.0" } }

    it "works" do
      expect(described_class.ubuntu?(node)).to be true
      expect(described_class.debian_platform?(node)).to be false
      expect(described_class.linuxmint?(node)).to be false
      expect(described_class.raspbian?(node)).to be false
    end
  end

  context "on aix 7.1 " do
    let(:options) { { platform: "aix", version: "7.1" } }
  end
  context "on amazon 2" do
    let(:options) { { platform: "amazon", version: "2" } }
  end
  context "on arch 4.10.13-1-ARCH" do
    let(:options) { { platform: "arch", version: "4.10.13-1-ARCH" } }
  end
  context "on centos 7.6.1810" do
    let(:options) { { platform: "centos", version: "7.6.1810" } }
  end
  context "on clearos 7.4" do
    let(:options) { { platform: "clearos", version: "7.4" } }
  end
  context "on debian 10" do
    let(:options) { { platform: "debian", version: "10" } }
  end
  context "on dragonfly4 4.8" do
    let(:options) { { platform: "dragonfly4", version: "4.8" } }
  end
  context "on fedora 29" do
    let(:options) { { platform: "fedora", version: "29" } }
  end
  context "on freebsd 11.2" do
    let(:options) { { platform: "freebsd", version: "11.2" } }
  end
  context "on gentoo 4.9.95 " do
    let(:options) { { platform: "gentoo", version: "4.9.95" } }
  end
  context "on mac_os_x 10.14" do
    let(:options) { { platform: "mac_os_x", version: "10.14" } }
  end
  context "on openbsd 6.2" do
    let(:options) { { platform: "openbsd", version: "6.2" } }
  end
  context "on opensuse 42.3" do
    let(:options) { { platform: "opensuse", version: "42.3" } }
  end
  context "on oracle 7.6" do
    let(:options) { { platform: "oracle", version: "7.6" } }
  end
  context "on redhat 8" do
    let(:options) { { platform: "redhat", version: "8" } }
  end
  context "on smartos 5.11" do
    let(:options) { { platform: "smartos", version: "5.11" } }
  end
  context "on solaris2 5.11" do
    let(:options) { { platform: "solaris2", version: "5.11" } }
  end
  context "on suse 15" do
    let(:options) { { platform: "suse", version: "15" } }
  end
  context "on windows 2019" do
    let(:options) { { platform: "windows", version: "2019" } }
  end
end
