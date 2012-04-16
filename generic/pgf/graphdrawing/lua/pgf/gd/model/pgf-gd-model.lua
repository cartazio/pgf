-- Copyright 2012 by Till Tantau
--
-- This file may be distributed an/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

--- @release $Header: /home/nmelzer/projects/TeX/pgf/generic/pgf/graphdrawing/lua/pgf/gd/model/Attic/pgf-gd-model.lua,v 1.1 2012/04/16 22:40:29 tantau Exp $



-- Imports

require "pgf"
require "pgf.gd"


-- Declare namespace
pgf.gd.model = {}


-- Preload namespace
package.loaded ["pgf.gd.model"] = pgf.gd.model

require "pgf.gd.model.Cluster"
require "pgf.gd.model.Edge"
require "pgf.gd.model.Graph"
require "pgf.gd.model.Node"


-- Done

return pgf.gd.model