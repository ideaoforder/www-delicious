# 
# = WWW::Delicious
#
# Ruby client for del.icio.us API.
# 
#
# Category::    WWW
# Package::     WWW::Delicious
# Author::      Simone Carletti <weppos@weppos.net>
# License::     MIT License
#
#--
# SVN: $Id$
#++


require 'test_helper'


RUN_ONLINE_TESTS = ($0 == __FILE__) unless defined?(RUN_ONLINE_TESTS)

puts "Online test #{__FILE__} skipped.\n" +
     "Use `ONLINE=1` to run online tests.\n" unless RUN_ONLINE_TESTS


class OnlineTest < Test::Unit::TestCase
  
  def setup
    init_account
  end
  
  
  def test_update
    response = @delicious.update
    assert_instance_of(Time, response)
  end
  
  
  def test_bundles_all
    response = @delicious.bundles_all
    assert_kind_of(Array, response)

    response.each do |bundle|
      assert_instance_of(WWW::Delicious::Bundle, bundle)
      assert_instance_of(Array, bundle.tags)
      assert_not_nil(bundle.name)
    end
  end
  
  def test_bundles_set
    bundle = WWW::Delicious::Bundle.new(:name => 'test_bundle', :tags => %w(ruby python).sort)
    assert_nothing_raised() { @delicious.bundles_set(bundle) }
  end
  
  def test_bundles_delete
    bundle = WWW::Delicious::Bundle.new(:name => 'test_bundle')
    assert_nothing_raised() { @delicious.bundles_delete(bundle) }
  end
  
  
  def test_tags_get
    response = @delicious.tags_get
    assert_kind_of(Array, response)

    response.each do |tag|
      assert_instance_of(WWW::Delicious::Tag, tag)
      assert_not_nil(tag.name)
      assert_not_nil(tag.count)
    end
  end
  
  def test_tags_rename
    ftag = WWW::Delicious::Tag.new(:name => 'old_tag')
    otag = WWW::Delicious::Tag.new(:name => 'new_tag')
    assert_nothing_raised() { @delicious.tags_rename(ftag, otag) }
  end
  
  
  def test_post_add
    # TODO
  end
  
  def test_post_all
    response = @delicious.posts_get
    assert_kind_of(Array, response)

    response.each do |post|
      assert_kind_of(WWW::Delicious::Post, post)
    end
  end
  
  def test_post_dates
    response = @delicious.posts_dates
    assert_kind_of(Hash, response)

    response.each do |item, value|
      assert_match(/[\d]{4}-[\d]{2}-[\d]{2}/, item)
      assert_match(/[\d]+/, value.to_s)
    end
  end
  
  def test_post_delete
    # TODO
  end
  
  def test_posts_get
    response = @delicious.posts_get
    assert_kind_of(Array, response)

    response.each do |post|
      assert_kind_of(WWW::Delicious::Post, post)
    end
  end
  
  def test_posts_recent
    response = @delicious.posts_recent
    assert_kind_of(Array, response)

    response.each do |post|
      assert_kind_of(WWW::Delicious::Post, post)
    end
  end
  
  
  protected
  
    def init_account(options = {}, &block)
      @delicious_username ||= ENV['DELICIOUS_USERNAME'] || self.class.prompt('Delicious Username') { |value| abort('Value cannot be blank') if value.blank?; value }
      @delicious_password ||= ENV['DELICIOUS_PASSWORD'] || self.class.prompt('Delicious Password') { |value| abort('Value cannot be blank') if value.blank?; value }
      @delicious = WWW::Delicious.new(@delicious_username, @delicious_password, options, &block)
    end
    
    # Convenient method for collecting user input
    def self.prompt(text, options = {}, &block)
      default = options[:default] || ''
      value   = nil
      while value.blank?
        print "#{text} [#{default}]: "
        value = STDIN.gets.chomp!
        value = default if value.blank?
        value = yield value if block_given?
        value
      end
      value
    end

end if RUN_ONLINE_TESTS
