-- Copyright 2012 by Till Tantau
--
-- This file may be distributed an/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

-- @release $Header: /home/nmelzer/projects/TeX/pgf/generic/pgf/graphdrawing/lua/pgf/gd/control/Attic/pgf-gd-control-AlgorithmLoader.lua,v 1.1 2012/04/16 22:40:29 tantau Exp $


local control = require "pgf.gd.control"


--- The AlgorithmLoader class is a singleton object.
-- Use this object to load algorithms.

control.AlgorithmLoader = {}



local function class_loader(name, kind)

  local filename = name:gsub(' ', '')
  
  -- if not defined, try to load the corresponding file
  if not pgf.graphdrawing[filename] then
   -- Load the file (if necessary)
   pgf.load("pgfgd-" .. kind .. "-" .. filename .. ".lua", "tex", false)
  end
  local algorithm_class = pgf.graphdrawing[filename]
  
  assert(algorithm_class, "No algorithm named '" .. filename .. "' was found. " ..
	 "Either the file does not exist or the class declaration is wrong.")

  return algorithm_class
end


--- Get the class of an algorithm from a name
--
-- @param name A string
--
-- @result Returns the class object corresponding to the name.

function control.AlgorithmLoader:algorithmClass(name)
  return class_loader(name, "algorithm")
end
  

--- Get the class of a subalgorithm from a name
--
-- @param name A string
--
-- @result Returns the class object corresponding to the name.

function control.AlgorithmLoader:subalgorithmClass(name)
  return class_loader(name, "subalgorithm")
end
  


-- Done

return control.AlgorithmLoader