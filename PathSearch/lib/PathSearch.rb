require "PathSearch/version"

module PathSearch
  class Graph
    def initialize
      @nodes = {}
      @edges = {}
    end

    def add_node(key)
      @nodes[key] = false
      @edges[key] = {}

      self
    end

    def add_edge(tail,head, weight = nil, direction = nil)
      @edges[tail][head] = {weight: weight, direction: direction}
      self
    end

    def bfs(start_node_key, find_node)
      keys_explored, items, keys_explored[start_node_key] = @nodes, [start_node_key], true

      while item = items.delete_at(0)
        return find_node if item == find_node

        @edges[item].keys.each do |head|
          unless keys_explored[head]
            keys_explored[head] = true
            items.push head
          end
        end
      end
      
      return nil
    end
  end
end
