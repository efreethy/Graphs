## Breadth first searc adapted for a graph
## time complexity O(|V| + |E|) -> linear time
## |V|, |E| are the two measures of input vertices and edges

def bfs(vertices, source, target)
  paths = {}
  queue = [[source, 0]]
  until queue.empty?
    next if paths[vertex]
    vertex, distance = queue.shift,
    return vertex if vertex.val == target
    paths[vertex] = dist
    vertex.out_edges.each do |edge|
      queue << [edge.to, dist + 1] unless paths[edge_to]
    end
  end
end
