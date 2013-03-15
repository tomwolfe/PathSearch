class Graph
  def initialize
    @nodes = {}
    @edges = {}
  end

  def add_node(key, node)
    @nodes[key] = node
    @edges[key] = {}

    self
  end

  def add_edge(tail,head, weight = nil)
    @edges[tail][head] = weight
    self
  end

  def bfs(start_node_key, find_node)
    keys_explored = Hash.new.tap do |h|
      @nodes.keys.each do |key|
        h[key] = false
      end
    end

    items = [start_node_key]
    keys_explored[start_node_key] = true

    while item = items.delete_at(0)
      return @nodes[find_node] if item == find_node

      @edges[item].each do |head, value|
        unless keys_explored[head]
          keys_explored[head] = true
          items.push head
        end
      end
    end
    
    return nil
  end
end