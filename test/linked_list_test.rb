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

  def test_it_has_append
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.head.data
  end

  def test_next_node_is_nil
    list = LinkedList.new
    list.append("doop")
    assert_nil list.head.next_node
  end

  def test_it_can_count
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
  end

  def test_it_converts_sound_to_sring
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.to_string
  end

  def test_it_can_append_multiple_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal 2, list.count
  end

  def test_it_can_convert_to_string
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "doop deep", list.to_string
  end
end
