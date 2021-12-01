#!/usr/bin/lua

--[[

  lysfetch - A sysfetch-like program written in Lua
  Version 1.1.0
  Github: https://github.com/LordOfTrident/lysfetch

--]]

local version_major = 1
local version_minor = 2
local version_patch = 4

-- Foreground colors
local colorRed     = "\x1b[31m"
local colorGreen   = "\x1b[32m"
local colorYellow  = "\x1b[33m"
local colorBlue    = "\x1b[34m"
local colorMagenta = "\x1b[35m"
local colorCyan    = "\x1b[36m"
local colorWhite   = "\x1b[37m"
local colorReset   = "\x1b[0m"

local bold = "\x1b[1m"
local boldPure = "\x1b[1;2m"

local asciiArtColor1 = colorYellow
local asciiArtColor2 = colorWhite
local asciiArtColor3 = colorBlue
local textColor = colorCyan
local textEffect = boldPure

local space = "    "
local colorBar = "   "
local title = nil

-- Background colors
local colors = {
-- Normal colors
	"\x1b[40m",
	"\x1b[41m",
	"\x1b[42m",
	"\x1b[43m",
	"\x1b[44m",
	"\x1b[45m",
	"\x1b[46m",
	"\x1b[47m",
-- Bright colors
	"\x1b[100m",
	"\x1b[101m",
	"\x1b[102m",
	"\x1b[103m",
	"\x1b[104m",
	"\x1b[105m",
	"\x1b[106m",
	"\x1b[107m"
}

local asciiArt = {
	"${3}        #####        ",
	"${3}       #######       ",
	"${3}       ##${2}O${3}#${2}O${3}##       ",
	"${3}       #${1}#####${3}#       ",
	"${3}     ##${2}##${1}###${2}##${3}##     ",
	"${3}    #${2}##########${3}##    ",
	"${3}   #${2}############${3}##   ",
	"${3}   #${2}############${3}###  ",
	"  ${1}##${3}#${2}###########${3}##${1}#${3}  ",
	"${1}######${3}#${2}#######${3}#${1}######${3}",
	"${1}#######${3}#${2}#####${3}#${1}#######${3}",
	"  ${1}#####${3}#######${1}#####${3}  "
}

-- Handy functions that the standard lacks
function string.replace(p_string, p_char, p_newChar)
	if p_string:match(p_char) then
		return p_string:gsub(p_char, p_newChar)
	end

	return p_string
end

function string.split(p_string, p_char)
	local splitString = {}

	for string in p_string:gmatch("([^" .. p_char .. "]+)") do
		table.insert(splitString, string)
	end

	return splitString
end

function ReadAsciiImageFile(p_path)
	local file = {}
	file.handle = io.open(p_path, "r")

	if file.handle == nil then
		print(colorRed .. "Unable to open file '" .. p_path .. "'")

		return false
	end

	file.contents = file.handle:read("*a")
	file.handle:close()

	asciiArt = file.contents:split("\n")

	if #asciiArt == 0 then
		asciiArt = {""}
	end

	return true
end

function GetColor(p_color)
	if p_color == "red" then
		return colorRed
	elseif p_color == "green" then
		return colorGreen
	elseif p_color == "yellow" then
		return colorYellow
	elseif p_color == "blue" then
		return colorBlue
	elseif p_color == "magenta" then
		return colorMagenta
	elseif p_color == "cyan" then
		return colorCyan
	elseif p_color == "white" then
		return colorWhite
	else
		return colorReset
	end
end

function GetEffect(p_effect)
	if p_effect == "bold-bright" then
		return bold
	elseif p_effect == "bold-dim" then
		return boldPure
	else
		return colorReset
	end
end

-- Parameters checking
for i, v in pairs(arg) do
	if i == 0 or v == "/usr/bin/lua" then
	elseif v == "-v" or v == "--version" then
		print(
			"lysfetch version " ..
			tostring(version_major) ..
			"." ..
			tostring(version_minor) ..
			"." ..
			tostring(version_patch)
		)

		do return end
	elseif v == "-h" or v == "--help" then
		print(
			"Usage: app [Options]\n" ..
			"Options:\n" ..
			"    -h, --help          Show the usage\n" ..
			"    -v, --version       Show the version\n" ..
			"    --aart=[File Path]  Customize the ascii art\n" ..
			"    --aartclr1=[Colors] Change ascii art color 1\n" ..
			"    --aartclr2=[Colors] Change ascii art color 2\n" ..
			"    --aartclr3=[Colors] Change ascii art color 3\n" ..
			"    --txtclr=[Colors]   Change labels color\n" ..
			"    --txteff=[Effects]  Change labels effect\n" ..
			"    --title=[Text]      Change the title\n" ..

			"\nColors:\n" ..
			"    red\n" ..
			"    green\n" ..
			"    yellow\n" ..
			"    blue\n" ..
			"    magenta\n" ..
			"    cyan\n" ..
			"    white\n" ..
			"    default\n" ..

			"\nEffects:\n" ..
			"    bold-bright\n" ..
			"    bold-dim\n" ..
			"    none"
		)

		do return end
	elseif v:sub(0, 11) == "--aartclr1=" then
		if #v < 12 then
			print(colorRed .. "Expected a value at '--aartclr1='")

			do return end
		end

		asciiArtColor1 = GetColor(v:sub(12))
	elseif v:sub(0, 11) == "--aartclr2=" then
		if #v < 12 then
			print(colorRed .. "Expected a value at '--aartclr2='")

			do return end
		end

		asciiArtColor2 = GetColor(v:sub(12))
	elseif v:sub(0, 11) == "--aartclr3=" then
		if #v < 12 then
			print(colorRed .. "Expected a value at '--aartclr3='")

			do return end
		end

		asciiArtColor3 = GetColor(v:sub(12))
	elseif v:sub(0, 9) == "--txtclr=" then
		if #v < 10 then
			print(colorRed .. "Expected a value at '--txtclr='")

			do return end
		end

		textColor = GetColor(v:sub(10))
	elseif v:sub(0, 9) == "--txteff=" then
		if #v < 10 then
			print(colorRed .. "Expected a value at '--txteff='")

			do return end
		end

		textEffect = GetEffect(v:sub(10))
	elseif v:sub(0, 7) == "--aart=" then
		if #v < 8 then
			print(colorRed .. "Expected a value at '--aart='")

			do return end
		end

		if ReadAsciiImageFile(v:sub(8)) == false then
			do return end
		end
	elseif v:sub(0, 8) == "--title=" then
		if #v < 9 then
			print(colorRed .. "Expected a value at '--title='")

			do return end
		end

		title = v:sub(9)
	else
		print(colorRed .. "Unknown parameter '" .. v .. "'")

		do return end
	end
end

function ReadFileLine(p_path, p_lineNumber)
	local file = {}
	file.handle = io.open(p_path, "r")

	if file.handle == nil then
		return false, colorRed .. "Unable to open file '" .. p_path .. "'"
	end

	file.contents = file.handle:read("*a")
	file.handle:close()

	if p_lineNumber == nil then
		return true, file.contents:replace("\n", "")
	end

	local contentsTable = {}
	for string in string.gmatch(file.contents, "([^\n]+)") do
		table.insert(contentsTable, string)
	end

	return true, contentsTable[p_lineNumber]:replace("\n", "")
end

function GetEnvVariable(p_name)
	local variable = os.getenv(p_name)

	if variable == nil then
		return colorRed .. "Variable '" .. p_name .. "' returned nil"
	end

	return variable
end

function GetFileInfoAt(p_path, p_lineNumber, p_char, p_part)
	local success, text = ReadFileLine(p_path, p_lineNumber)

	text = tostring(text)

	if not success then
		return text
	end

	if p_char ~= nil then
		text = text:split(p_char)[p_part]
	end

	return text:replace('"', "")
		:gsub('^%s*(.-)%s*$', '%1')
end

local counter = 0
function Next()
	counter = counter + 1

	return counter
end

if title == nil then
	title =
		GetEnvVariable("USER") ..
		"@" ..
		GetFileInfoAt("/etc/hostname")
end

function StripLine(p_line)
	local line = p_line:replace("${0}", "")
	line = line:replace("${1}", "")
	line = line:replace("${2}", "")
	line = line:replace("${3}", "")

	return line
end

-- Replace color IDs with escape sequences but
-- keep the original version stored
local asciiArtUnmodified = {}
for i, v in pairs(asciiArt) do
	table.insert(asciiArtUnmodified, v)

	v = v:replace("${0}", colorReset)
	v = v:replace("${1}", asciiArtColor1)
	v = v:replace("${2}", asciiArtColor2)
	asciiArt[i] = v:replace("${3}", asciiArtColor3)
end

local asciiArtLineWidth = #StripLine(asciiArtUnmodified[1])
local indentation = (" "):rep(asciiArtLineWidth) .. space
local terminfo = GetEnvVariable("TERM")
local has16Colors = true

function AsciiArt()
	local index = Next()
	local line = asciiArt[index]

	if line == nil then
		return indentation
	end

	-- Add missing indentation
	local strippedLine = StripLine(asciiArtUnmodified[index])

	if
		#strippedLine
		< asciiArtLineWidth
	then
		line = line .. (" "):rep(asciiArtLineWidth - #strippedLine)
	end

	return line .. colorReset .. space
end

function Label(p_text)
	return textEffect .. textColor .. p_text .. colorReset
end

if terminfo:sub(#terminfo - 5, #terminfo) == "8color" then
	has16Colors = false
end

function CheckConvertkBToMB(p_kB)
	local p_kB = tonumber(p_kB)

	if p_kB > 1024 then
		return tostring(
			math.floor(p_kB / 1024 + 0.5)
		) .. "MB"
	end

	return tostring(p_kB) .. "kB"
end

function CheckConvertTime(p_seconds)
	p_seconds = tonumber(p_seconds)

	local hours = nil
	local minutes = nil

	if p_seconds > 3600 then
		hours = math.floor(p_seconds / 3600)
	end

	if p_seconds > 60 then
		minutes = math.floor(p_seconds / 60)
	end

	if minutes ~= nil then
		if hours ~= nil then
			minutes = minutes - hours * 60
			p_seconds = p_seconds - hours * 3600
		end

		p_seconds = p_seconds - minutes * 60
	end

	return hours, minutes, p_seconds
end

local totalMemory = CheckConvertkBToMB(
	GetFileInfoAt("/proc/meminfo", 1, " ", 2)
)

local freeMemory = CheckConvertkBToMB(
	GetFileInfoAt("/proc/meminfo", 3, " ", 2)
)

local totalSwap = CheckConvertkBToMB(
	GetFileInfoAt("/proc/meminfo", 15, " ", 2)
)

local freeSwap = CheckConvertkBToMB(
	GetFileInfoAt("/proc/meminfo", 16, " ", 2)
)

local
	uptimeHours,
	uptimeMinutes,
	uptimeSeconds = CheckConvertTime(
		GetFileInfoAt("/proc/uptime", nil, ".", 1)
	)

local uptime = ""
if uptimeHours ~= nil then
	uptime = uptime .. tostring(uptimeHours) .. "h "
end

if uptimeMinutes ~= nil then
	uptime = uptime .. tostring(uptimeMinutes) .. "m "
end

uptime = uptime .. tostring(uptimeSeconds) .. "s"

-- Main lysfetch output
print(colorReset .. indentation .. title)
print(AsciiArt() .. ("-"):rep(#title))
print(AsciiArt() .. Label("OS: ")           .. GetFileInfoAt("/etc/os-release", 1, "=", 2))
print(AsciiArt() .. Label("Kernel: ")       .. GetFileInfoAt("/proc/sys/kernel/osrelease"))
print(AsciiArt() .. Label("CPU: ")          .. GetFileInfoAt("/proc/cpuinfo", 5, ":", 2))
print(AsciiArt() .. Label("Total memory: ") .. totalMemory)
print(AsciiArt() .. Label("Free memory: ")  .. freeMemory)
print(AsciiArt() .. Label("Total swap: ")   .. totalSwap)
print(AsciiArt() .. Label("Free swap: ")    .. freeSwap)
print(AsciiArt() .. Label("Uptime: ")       .. uptime)
print(AsciiArt() .. Label("Shell: ")        .. GetEnvVariable("SHELL"))
print(AsciiArt() .. Label("Hostname: ")     .. GetFileInfoAt("/etc/hostname"))
print(AsciiArt() .. Label("User: ")         .. GetEnvVariable("USER"))

-- Draw rest of the ascii art
while counter < #asciiArt do
	print(AsciiArt())
end

io.write("\n" .. indentation)

-- Output colors
for i, v in pairs(colors) do
	io.write(v .. colorBar)

	if i == #colors / 2 then
		if not has16Colors then
			break
		end

		io.write(colorReset .. "\n" .. indentation)
	end
end

print(colorReset .. "\n")
