workspace("Game")
configurations({ "Debug", "Release" })

project("Game")
kind("ConsoleApp")
language("C++")
targetdir("bin/%{cfg.buildcfg}")

files({ "**.h", "**.cpp" })

filter("configurations:Debug")
defines({ "DEBUG" })
symbols("On")

filter("configurations:Release")
defines({ "NDEBUG" })
optimize("On")
