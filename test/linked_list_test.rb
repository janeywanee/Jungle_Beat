require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'
require 'pry'


class LinkedListTest < Minitest::Test

  def test_linked_list_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_It_has_a_head
    list = LinkedList.new

    assert_nil list.head
  end

  def test_it_appends_node
    list = LinkedList.new
    list.append("doop")

    assert_instance_of Node, list.head
    assert_equal "doop", list.head.data
  end

  def test_it_appends_more_than_one_node
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.head.data
    list.append("deep")
    assert_equal "deep", list.head.next_node.data
    list.append("plop")
    assert_equal "plop", list.head.next_node.next_node.data
    list.append("suu")
    assert_equal "suu", list.head.next_node.next_node.next_node.data

    assert_instance_of Node, list.head
    assert_equal "suu", list.head.next_node.next_node.next_node.data
  end

  # def test_next_node_is_nil
  #   list = LinkedList.new
  #   list.append("doop")
  #   assert_nil list.head.next_node
  # end

  def test_it_converts_to_string
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.to_string
  end


  def test_it_can_take_multiple_nodes_and_create_one_string
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.to_string
    list.append("deep")
    assert_equal "doop deep", list.to_string
    list.append("plop")
    assert_equal "doop deep plop", list.to_string
    assert_equal 3, list.count
  end

  def test_it_prepends_data
    list = LinkedList.new
    list.append ("plop")
    list.append ("suu")

    assert_equal "plop", list.head.data
    assert_equal "suu", list.head.next_node.data

    list.prepend("dop")

    assert_equal "dop", list.head.data
    assert_equal "plop", list.head.next_node.data
  end

  def test_It_prepends_more_than_once
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.prepend("see")
    
    assert_equal "see", list.head.data
    assert_equal "see dop plop suu", list.to_string
  end

end






# > list.append("plop")
# => "plop"
# > list.to_string
# => "plop"
# > list.append("suu")
# => "suu"
# > list.prepend("dop")
# => "dop"
# > list.to_string
# => "dop plop suu"
# > list.count
# => 3
# > list.insert(1, "woo")
# => "woo"
# list.to_string
# => "dop woo plop suu"
