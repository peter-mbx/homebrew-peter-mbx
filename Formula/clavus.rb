class Clavus < Formula
  desc "A lightweight command-line tool designed for anyone in the tech field, specially for IT consultants or professionals managing multiple clients environments.\nThis tool simplifies the management of configurations on your machine, allowing you to configure your environment and load the necessary resources, like files and/or commands."
  homepage "https://github.com/peter-mbx/clavus"

  url "https://github.com/peter-mbx/clavus.git",
      tag:      "0.0.1",
      revision: "3d7e77f3cab1118b7e30c88a3ebb55e9c966a26e"

  license "MIT"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "cargo", "test"
  end
end
