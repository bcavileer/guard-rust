require 'guard'
require 'guard/plugin'

module Guard
  class Rust < Plugin

    def run_on_changes(paths)
      paths.each do |path|
        system "cargo test --manifest-path ./#{path}/Cargo.toml"
      end
    end

  end
end
