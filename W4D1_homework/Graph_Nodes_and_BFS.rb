require "set"
class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

    def add_neighbor(node)
        self.neighbors << node
    end

    def bfs(starting_node, target_value)
        queue = [starting_node]
        visited = Set.new()

        until queue.empty?
            node = queue.shift
            unless visited.include?(node)
                return node.val if node.val == target_value
                visited.add(note)
                queue += node.neighbors
            end
        end
        nil
    end  
end

