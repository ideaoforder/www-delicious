Gem::Specification.new do |s|
  s.name     = "www-delicious"
  s.version  = "0.2.0"
  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.date     = "2008-08-11"
  s.summary  = "Ruby client for del.icio.us API."
  s.email    = "weppos@weppos.net"
  s.homepage = "http://code.simonecarletti.com/www-delicious"
  s.description = "WWW::Delicious is a del.icio.us API client implemented in Ruby. It provides access to all available del.icio.us API queries and returns the original XML response as a friendly Ruby object."
  s.has_rdoc = true
  s.authors  = ["Simone Carletti"]
    s.files    = ["CHANGELOG.rdoc", 
      "lib/www/delicious/bundle.rb", 
      "lib/www/delicious/element.rb", 
      "lib/www/delicious/errors.rb", 
      "lib/www/delicious/post.rb", 
      "lib/www/delicious/tag.rb", 
      "lib/www/delicious/version.rb", 
      "lib/www/delicious.rb", 
      "LICENSE.rdoc", 
      "Rakefile", 
      "README.rdoc", 
      "setup.rb", 
      "Manifest", 
      "www-delicious.gemspec"]
    s.test_files = ["test/fixtures/net_response_invalid_account.yml", 
      "test/fixtures/net_response_success.yml", 
      "test/helper.rb", 
      "test/test_all.rb", 
      "test/test_offline.rb", 
      "test/test_online.rb", 
      "test/testcases/element/bundle.xml", 
      "test/testcases/element/invalid_root.xml", 
      "test/testcases/element/post.xml", 
      "test/testcases/element/post_unshared.xml", 
      "test/testcases/element/tag.xml", 
      "test/testcases/response/bundles_all.xml", 
      "test/testcases/response/bundles_all_empty.xml", 
      "test/testcases/response/bundles_delete.xml", 
      "test/testcases/response/bundles_set.xml", 
      "test/testcases/response/bundles_set_error.xml", 
      "test/testcases/response/posts_add.xml", 
      "test/testcases/response/posts_all.xml", 
      "test/testcases/response/posts_dates.xml", 
      "test/testcases/response/posts_dates_with_tag.xml", 
      "test/testcases/response/posts_delete.xml", 
      "test/testcases/response/posts_get.xml", 
      "test/testcases/response/posts_get_with_tag.xml", 
      "test/testcases/response/posts_recent.xml", 
      "test/testcases/response/posts_recent_with_tag.xml", 
      "test/testcases/response/tags_get.xml", 
      "test/testcases/response/tags_get_empty.xml", 
      "test/testcases/response/tags_rename.xml", 
      "test/testcases/response/update.delicious1.xml", 
      "test/testcases/response/update.xml", 
      "test/unit/bundle_test.rb", 
      "test/unit/delicious_test.rb", 
      "test/unit/online/online_test.rb", 
      "test/unit/post_test.rb", 
      "test/unit/tag_test.rb"]
    s.rdoc_options = ["--main", "README.rdoc", "line-numbers", "--inline-source", "--title", "Www-delicious"]
    s.extra_rdoc_files = ["CHANGELOG.rdoc",
      "lib/www/delicious/bundle.rb",
      "lib/www/delicious/element.rb",
      "lib/www/delicious/errors.rb",
      "lib/www/delicious/post.rb",
      "lib/www/delicious/tag.rb",
      "lib/www/delicious/version.rb",
      "lib/www/delicious.rb",
      "README.rdoc"]
    s.add_dependency("rake", [">= 0.8.0"])
    s.add_dependency("echoe", [">= 3.0.0"])
    s.add_dependency("mocha", [">= 0.9.0"])
  end