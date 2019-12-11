# -*- coding: utf-8 -*-
require './test_helper'
require 'my_help'
require 'colorize'
class TestMyHelpControl <  Test::Unit::TestCase
  def setup
    @control = MyHelp::Control.new()
    @control.local_help_dir  = './my_help_sample_dir'
    @conf_file = File.join(Dir.pwd,'.my_help_conf.yml')
  end

=begin
  require 'yaml'
  def test_set_conf
    @control.set_conf('emacs')
    assert_equal('emacs', @control.editor)
  end
<<<<<<< HEAD
=======

>>>>>>> c9916b0bfbbb1fb93e28a7edfd4944d59bd3f158
  def test_load_conf
    file_name = '.my_help_conf.yml'
    @conf_file = File.join(Dir.pwd, file_name)
    conf = {:editor => 'vim'}
    file = File.open(@conf_file, 'w')
    YAML.dump(conf, file)
    file.close
    @control.load_conf # yaml
    assert_equal('vim', @control.editor)
  end
=end
<<<<<<< HEAD
#  def test_assert
  must "be assert" do
    assert { @control.is_a?(MyHelp::Control) }
  end
  must "test local help dir" do
    assert_equal('./my_help_sample_dir',@control.local_help_dir)
  end
  def test_list_no_args
    puts expected = "\e[0;34;49mList all helps\n" +
"\e[0m\e[0;34;49mhelp_template\e[0m\e[0;34;49m: - ヘルプのサンプル雛形\n" +
"\e[0m"
    assert_equal(expected, @control.list_all)
  end
  def test_list_wrong_file
=======
  #  def test_assert
  must "be assert" do
    assert { @control.is_a?(MyHelp::Control) }
  end
  must "show local help dir" do
    assert_equal('./my_help_sample_dir',@control.local_help_dir)
  end
  # must "list all" do
  def test_list_all
    puts expected = "\nList all helps\nhelp_template: - ヘルプのサンプル雛形\n"
    assert_equal(expected, @control.list_all)
  end
  #must "raise error on list_help with wrong help name" do
  def test_list_help_with_wrong_help
>>>>>>> c9916b0bfbbb1fb93e28a7edfd4944d59bd3f158
    e = assert_raises MyHelp::Control::WrongFileName do
      @control.list_help('wrong_file')
    end
    puts e.to_s.red
  end
<<<<<<< HEAD
  def test_list_correct_file
    assert_nothing_raised do
      @control.list_help('help_template')
    end
  end
  def test_list_wrong_item
    e = assert_raises MyHelp::Control::WrongItemName do
=======
  #must "list items with correct help name" do
  def test_list_help_with_correct_help
      assert_nothing_raised do
      @control.list_help('help_template')
    end
  end
  # must "raise error on show_item with wrong item" do
  def test_show_item_with_wrong_item
      e = assert_raises MyHelp::Control::WrongItemName do
>>>>>>> c9916b0bfbbb1fb93e28a7edfd4944d59bd3f158
      @control.show_item('help_template', 'wrong_item')
    end
    assert_equal("No item entry: wrong_item",  e.to_s)
  end
<<<<<<< HEAD
  def test_list_correct_long_item
=======
  #must "show items with correct long item"
  def test_show_item_with_correct_long_item
>>>>>>> c9916b0bfbbb1fb93e28a7edfd4944d59bd3f158
    assert_nothing_raised do
      @control.show_item('help_template', 'item_example')
    end
  end
<<<<<<< HEAD
  def test_list_correct_short_item_short
=======
  #must "show items with correct short item"
  def test_show_item_correct_short_item_short
>>>>>>> c9916b0bfbbb1fb93e28a7edfd4944d59bd3f158
    assert_nothing_raised do
      @control.show_item('help_template', '-i')
    end
  end
<<<<<<< HEAD
=======
  #must "change editor"
>>>>>>> c9916b0bfbbb1fb93e28a7edfd4944d59bd3f158
  def test_change_editor
    tmp_editor = @control.editor
    @control.set_editor('vim')
    assert_equal('vim', @control.editor)
    @control.editor=tmp_editor
#    @control.edit_help('help_template')  # => command_line(rspec)でassertするべき
  end

end
<<<<<<< HEAD
=======


>>>>>>> c9916b0bfbbb1fb93e28a7edfd4944d59bd3f158
