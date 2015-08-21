Rake::Task["default"].clear if Rake::Task.task_defined?(:default)

@external_dependencies = ['mongo', 'docker']
@docker_repo = "10.0.0.100:5000"

task default: %i[
  bake:check_external_dependencies
  bake:bundler_audit
  bake:code_quality:all
  bake:rails_best_practices
  bake:rspec
  bake:coverage:check_specs
  notes
  bake:ok_rainbow
]

task :ci => %i[
  default
  docker:build
  docker:push
]
