class Vertex
  def initialize(val)
    @val = val
    @out_edges = []
    @in_edges = []
  end
end

class Edge
  def initialize(from, to)
    @from, @to = from, to
    @from.out_edges << self
    @to.in_edges << self
  end
end
