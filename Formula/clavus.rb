class Clavus < Formula
  desc "A lightweight command-line tool designed for anyone in the tech field, specially for IT consultants or professionals managing multiple clients environments.\nThis tool simplifies the management of configurations on your machine, allowing you to configure your environment and load the necessary resources, like files and/or commands."
  homepage "https://github.com/peter-mbx/clavus"

  url "https://github.com/peter-mbx/clavus.git",
      tag:      "1.1.0",
      revision: "27b2348baaf8abb87aad48d6349dc19258d47dfd"

  license "MIT"
  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "cargo", "test"
  end
end
