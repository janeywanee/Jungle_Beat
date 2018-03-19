require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require 'pry'

class NodeTest < Minitest::Test

  def test_node_exists
    node = Node.new

    assert_instance_of Node, node
  end

  def test_test_it_holds_data
    node = Node.new("plop")

    assert_equal "plop", node.data
  end

  def test_it_has_a_next_node
    node = Node.new

    assert_nil node.next_node
  end

end
