-- Copyright 2012 by Till Tantau
--
-- This file may be distributed an/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

-- @release $Header: /home/nmelzer/projects/TeX/pgf/generic/pgf/graphdrawing/lua/pgf/gd/trees/Attic/pgf.gd.trees.BreadthFirst.lua,v 1.2 2012/04/19 23:28:49 tantau Exp $



--- A (sub)algorithm for computing spanning trees
--
-- This algorithm will compute a spanning tree of a graph using the
-- breadth first method.

local BreadthFirst = pgf.gd.new_algorithm_class {}

-- Namespace
require("pgf.gd.trees").BreadthFirst = BreadthFirst

-- Imports
local SpanningTreeComputation = require "pgf.gd.trees.SpanningTreeComputation"


--- Compute a spanning tree of a graph
--
-- The computed spanning tree will be available through the fields
-- algorithm.children of each node and algorithm.spanning_tree_root of
-- the graph.
--
-- @param graph The graph for which the spanning tree should be computed 

function BreadthFirst:run ()
  SpanningTreeComputation:computeSpanningTree(self.parent_algorithm, false)
end


return BreadthFirst