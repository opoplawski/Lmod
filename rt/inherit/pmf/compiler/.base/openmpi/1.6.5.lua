local fn      = myFileName():gsub("%.lua$","")
local mroot   = fn:gsub("/compiler/.*$","")
local name    = myModuleName()
local version = myModuleVersion()
local v       = version:match("([0-9]+%.[0-9]+)%.?")
local hierA   = hierarchyA(myModuleFullName(),1)
local mdir    = pathJoin(mroot,"mpi",hierA[1],name,v)
setenv("PERSONAL_"..name,version)
inherit()
prepend_path("MODULEPATH",mdir)