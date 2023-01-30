class GraphNode

    def bfs(starting_node, target_value)
        visited_nodes = [starting_node]
        queue = #not sure

        until queue.empty?
            current_node = queue.shift
            if current_node.value == target_value
              return current_node
            end
            visited_nodes << node
          end
        end
      end
      
      nil
    end


end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]