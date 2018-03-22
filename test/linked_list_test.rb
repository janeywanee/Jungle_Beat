require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'
require 'pry'


class LinkedListTest < Minitest::Test
  attr_reader :list

  def setup
    @list = LinkedList.new
  end

  def test_linked_list_exists
    assert_instance_of LinkedList, list
  end

  def test_It_has_a_head_default_nil
    assert_nil list.head
  end

  def test_it_appends
    list.append("doop")
    assert_equal "doop", list.head.data
    assert_instance_of Node, list.head
  end

  def test_it_appends_more_than_one_node
    list.append("doop")
    list.append("deep")
    list.append("plop")
    list.append("suu")

    assert_equal "suu", list.head.next_node.next_node.next_node.data
    assert_instance_of Node, list.head
  end

  def test_next_node_is_nil
    list.append("doop")
    assert_nil list.head.next_node
  end

  def test_it_converts_to_string
    list.append("doop")
    assert_equal "doop", list.to_string
  end


  def test_it_can_take_multiple_nodes_and_create_one_string
    list.append("doop")
    assert_equal "doop", list.to_string
    list.append("deep")
    assert_equal "doop deep", list.to_string
    list.append("plop")
    assert_equal "doop deep plop", list.to_string
    assert_equal 3, list.count
  end

  def test_it_prepends_data
    list.append ("plop")
    list.append ("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
    assert_equal 3, list.count
  end

  def test_It_prepends_more_than_once
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.prepend("see")

    assert_equal "see", list.head.data
    assert_equal "see dop plop suu", list.to_string
    assert_equal 4, list.count
  end

  def test_it_can_insert
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string

    list.insert(1, "woo")
    assert_equal "dop woo plop suu", list.to_string
  end

  def test_it_can_insert_more_than_once
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
    list.insert(1, "woo")
    list.insert(1, "wop")
    assert_equal "dop wop woo plop suu", list.to_string
  end

  def test_it_can_find
    skip
    list.append("deep")
    list.append("woo")
    list.append("she")
    list.append("suu")
    list.append("blop")
    assert_equal "deep woo she suu blop", list.to_string
    assert_equal "shi", list.find(2, 1)
  end

  def test_it_can_include
    skip

  end




end


# > list.find(2, 1)
# => "shi"
# > list.find(1, 3)
# => "woo shi shu"
# > list.includes?("deep")
# => true
# > list.includes?("dep")
# => false
# > list.pop
# => "blop"
# > list.pop
# => "shu"
# > list.to_string
# => "deep
