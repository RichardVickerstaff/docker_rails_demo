
require 'rake-n-bake'

task default: %i[
  bake:bundler_audit
  bake:code_quality:all
  bake:rails_best_practices
  bake:rspec
  bake:coverage:check_specs
  notes
  bake:ok_rainbow
]
