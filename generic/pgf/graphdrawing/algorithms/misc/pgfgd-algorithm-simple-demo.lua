-- Copyright 2010 by Renée Ahrens, Olof Frahm, Jens Kluttig, Matthias Schulz, Stephan Schuster
--
-- This file may be distributed an/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

-- @release $Header: /home/nmelzer/projects/TeX/pgf/generic/pgf/graphdrawing/algorithms/misc/Attic/pgfgd-algorithm-simple-demo.lua,v 1.1 2011/05/06 15:12:16 jannis-pohlmann Exp $

-- This file contains an example of how a very simple algorithm can be
-- implemented by a user.

pgf.module("pgf.graphdrawing")

--- A very, yery simple node placing algorithm for demonstration purposes.
-- All nodes are positioned on a fixed size circle.
function drawGraphAlgorithm_simpleexample(graph)
   local radius = graph:getOption("/graph drawing/radius") or 20
   local nodeCount = table.count_pairs(graph.nodes)

   local alpha = (2 * math.pi) / nodeCount
   local i = 0
   for node in table.value_iter(graph.nodes) do
      -- the interesting part...
      node.pos:set{x = radius * math.cos(i * alpha)}
      node.pos:set{y = radius * math.sin(i * alpha)}
      i = i + 1
   end
end
