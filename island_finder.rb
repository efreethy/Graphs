# connected_components can be found in linear time
# connected_components = Set.new
# vertices.each
#   if !explored[vertex]
#     connected_components << bfs(vertex)
#   end
# end
#
# Time complexity
#
def topo_sort(graph)
  count = {}
  ordering = []
  queue = []
  graph.each do |vertex| # O(|V|)
    count[vertex] = vertex.in_edges.count
    queue.push(vertex) if count[vertex] = 0
  end

  until queue.empty? # O(|V|)
    v queue.shift
    ordering << v
    v.out_edges.each do |e| # O(|E|/|V|)
      v2 = e.to
      counts[v2] -= 1
      queue.push(v2) if counts[v2] == 0
    end
  end
  ordering
end
