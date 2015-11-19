def topo_sort(graph)
  explored = Set.new
  ordering = []
  graph.each do |vertex|
    dfs!(vertex, explored, ordering) unless explored.include?(vertex)
  end
  ordering
end

def dfs!(vertex, explored, ordering)
  explored << vertex
  vertex.out_edges.each do |v2|
    dfs!(v2, explored, ordering) unless explored.include?(v2)
    ordering << vertex
end
