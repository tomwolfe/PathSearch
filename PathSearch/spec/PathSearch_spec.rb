require 'spec_helper'

describe PathSearch do
  describe 'Graph' do
    describe '#bfs' do
      before :each do
        @graph = PathSearch::Graph.new.tap do |g|
          g.add_node(:Bucharest)
          g.add_node(:Indonesia)
          g.add_node(:Portugal)
          g.add_node(:Spain)
          g.add_node(:France)
          g.add_edge(:Bucharest, :Indonesia)
          g.add_edge(:Indonesia, :Portugal)
          g.add_edge(:Indonesia, :France)
        end
      end

      it 'returns nil for the non-existant path from Bucharest and Spain' do
        expect(@graph.bfs(:Bucharest, :Spain)).to be nil
      end
      it 'returns :Portugal for the existant path from Bucharest and Portugal' do
        expect(@graph.bfs(:Bucharest, :Portugal)).to eq(:Portugal)
      end
    end
  end
end
