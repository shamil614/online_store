# -*- encoding: utf-8 -*-
# stub: carrot_rpc 0.2.3 ruby lib

Gem::Specification.new do |s|
  s.name = "carrot_rpc"
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Scott Hamilton", "Luke Imhoff"]
  s.date = "2016-02-21"
  s.description = "Streamlined approach to setting up RPC over RabbitMQ."
  s.email = ["shamil614@gmail.com", "Kronic.Deth@gmail.com"]
  s.executables = ["carrot_rpc", "console", "setup"]
  s.files = [".gitignore", ".rspec", ".rubocop.yml", ".travis.yml", "CHANGELOG.md", "CODE_OF_CONDUCT.md", "Gemfile", "LICENSE", "LICENSE.txt", "README.md", "Rakefile", "bin/carrot_rpc", "bin/console", "bin/setup", "carrot_rpc.gemspec", "circle.yml", "lib/carrot_rpc.rb", "lib/carrot_rpc/cli.rb", "lib/carrot_rpc/client_server.rb", "lib/carrot_rpc/configuration.rb", "lib/carrot_rpc/error.rb", "lib/carrot_rpc/error/code.rb", "lib/carrot_rpc/hash_extensions.rb", "lib/carrot_rpc/rpc_client.rb", "lib/carrot_rpc/rpc_server.rb", "lib/carrot_rpc/rpc_server/jsonapi_resources.rb", "lib/carrot_rpc/rpc_server/jsonapi_resources/actions.rb", "lib/carrot_rpc/server_runner.rb", "lib/carrot_rpc/server_runner/autoload_rails.rb", "lib/carrot_rpc/server_runner/logger.rb", "lib/carrot_rpc/server_runner/pid.rb", "lib/carrot_rpc/server_runner/signals.rb", "lib/carrot_rpc/tagged_log.rb", "lib/carrot_rpc/version.rb", "logs/.gitkeep"]
  s.homepage = "https://github.com/C-S-D/carrot_rpc"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new("~> 2.2")
  s.rubygems_version = "2.4.6"
  s.summary = "Remote Procedure Call (RPC) using the Bunny Gem over RabbitMQ"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["~> 4.2"])
      s.add_runtime_dependency(%q<bunny>, ["~> 2.2"])
      s.add_development_dependency(%q<byebug>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.9"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rubocop>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, ["~> 4.2"])
      s.add_dependency(%q<bunny>, ["~> 2.2"])
      s.add_dependency(%q<byebug>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.9"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rubocop>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, ["~> 4.2"])
    s.add_dependency(%q<bunny>, ["~> 2.2"])
    s.add_dependency(%q<byebug>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.9"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rubocop>, [">= 0"])
  end
end
