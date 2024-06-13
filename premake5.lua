project "stb"
	kind "StaticLib"
	language "C"
	cdialect "c11"
    staticruntime "off"

	targetdir ("../bin/" .. outputdir .. "/%{prj.name}")
	objdir ("../bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"*.h",
		"*.c"
	}

	includedirs
	{
        "*.h",
		"*.c"
	}

	defines
	{
		"_CRT_SECURE_NO_WARNINGS"
	}
    
	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"