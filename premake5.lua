project "spdlog"
	language "C++"
	cppdialect "C++20"
	targetdir "bin/%{cfg.buildcfg}/%{cfg.platform}/"
	objdir "bin/intermediates/%{cfg.buildcfg}/%{cfg.platform}/"

	kind "StaticLib"

	files { 
		"include/**.h", 
		"src/**.cpp"
	}

	includedirs "include"

	defines { "SPDLOG_COMPILED_LIB" }

	filter "configurations:Debug"
		symbols "On"

	filter "configurations:Release"
		optimize "On"
		defines "NDEBUG"

	filter "system:windows"
		systemversion "latest"