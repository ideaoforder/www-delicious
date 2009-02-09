# -*- encoding: utf-8 -*-
 
Gem::Specification.new do |s|
  s.name = %q{www-delicious}
  s.version = "0.2.1"
 
  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Simone Carletti"]
  s.date = %q{2009-02-08}
  s.description = %q{WWW::Delicious is a del.icio.us API client implemented in Ruby. It provides access to all available del.icio.us API queries and returns the original XML response as a friendly Ruby object.}
  s.email = %q{weppos@weppos.net}
  s.extra_rdoc_files = ["lib/www/delicious/bundle.rb", "lib/www/delicious/tag.rb", "lib/www/delicious/element.rb", "lib/www/delicious/version.rb", "lib/www/delicious/post.rb", "lib/www/delicious/errors.rb", "lib/www/delicious.rb", "CHANGELOG.rdoc", "README.rdoc"]
  s.files = ["lib/www/delicious/bundle.rb", "lib/www/delicious/tag.rb", "lib/www/delicious/element.rb", "lib/www/delicious/version.rb", "lib/www/delicious/post.rb", "lib/www/delicious/errors.rb", "lib/www/delicious.rb", "test/post_test.rb", "test/test_all.rb", "test/fixtures/net_response_success.yml", "test/fixtures/net_response_invalid_account.yml", "test/delicious_test.rb", "test/online_test.rb", "test/test_helper.rb", "test/bundle_test.rb", "test/tag_test.rb", "test/testcases/response/posts_get_with_tag.xml", "test/testcases/response/tags_get_empty.xml", "test/testcases/response/update.xml", "test/testcases/response/bundles_set.xml", "test/testcases/response/bundles_delete.xml", "test/testcases/response/posts_get.xml", "test/testcases/response/posts_add.xml", "test/testcases/response/bundles_set_error.xml", "test/testcases/response/posts_all.xml", "test/testcases/response/posts_dates_with_tag.xml", "test/testcases/response/posts_dates.xml", "test/testcases/response/bundles_all.xml", "test/testcases/response/posts_delete.xml", "test/testcases/response/posts_recent_with_tag.xml", "test/testcases/response/tags_get.xml", "test/testcases/response/bundles_all_empty.xml", "test/testcases/response/posts_recent.xml", "test/testcases/response/update.delicious1.xml", "test/testcases/response/tags_rename.xml", "test/testcases/element/invalid_root.xml", "test/testcases/element/tag.xml", "test/testcases/element/post.xml", "test/testcases/element/bundle.xml", "test/testcases/element/post_unshared.xml", "Manifest", "Rakefile", "LICENSE.rdoc", "CHANGELOG.rdoc", "www-delicious.gemspec", "setup.rb", "README.rdoc", "init.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://code.simonecarletti.com/www-delicious}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Www-delicious", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{www-delicious}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Ruby client for del.icio.us API.}
  s.test_files = ["test/test_all.rb"]
 
  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2
 
    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<echoe>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0.8"])
      s.add_development_dependency(%q<echoe>, [">= 3.0"])
      s.add_development_dependency(%q<mocha>, [">= 0.9"])
    else
      s.add_dependency(%q<echoe>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0.8"])
      s.add_dependency(%q<echoe>, [">= 3.0"])
      s.add_dependency(%q<mocha>, [">= 0.9"])
    end
  else
    s.add_dependency(%q<echoe>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0.8"])
    s.add_dependency(%q<echoe>, [">= 3.0"])
    s.add_dependency(%q<mocha>, [">= 0.9"])
  end
end