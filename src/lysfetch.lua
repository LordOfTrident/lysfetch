#!/usr/bin/lua

g_version_major = 2
g_version_minor = 0
g_version_patch = 0

--[[

	all customization options are under the settings option in the code.
	the customization tutorial in README.md

--]]

-- Settings
g_no_line_wrap = true
g_border       = true
g_display_sections     = true
g_fixed_hz_border_size = false -- Set this to the length of the size if enabled
g_center_title   = true
g_center_colors  = true
g_show_ascii_art = true
g_show_colors    = true
g_show_title     = true
g_16_colors      = false
g_title_underl   = false
g_info_underl    = false
g_colors_ordered = true
g_show_bw_clr    = false -- Show black and white colors too

g_ascii_art_name = "default_tux" -- Your ascii art file path
-- default ascii art: default_tux, default_lua

g_border_bg = "attr_reset"
g_border_fg = "fg_bwhite"

g_info_underl_bg = "attr_reset"
g_info_underl_fg = "fg_white"
g_info_underl_ch = "-"

g_title_underl_bg = "attr_reset"
g_title_underl_fg = "fg_white"
g_title_underl_ch = "-"
g_border_chs = {
	v  = "│",
	h  = "─",
	j  = "├",
	tl = "┌",
	bl = "└"
}

g_title_format =
	"${attr_bold}${fg_bwhite}${info_user}${fg_bcyan}@${fg_bblue}${info_host}"
g_label_format =
	"${fg_green} ■ ${fg_bblue}${label}:${attr_reset}${align_spaces} "
g_section_format =
	" ${fg_bwhite}${section} "
g_color_format =
	"  ${color}██  "

--[[

	Neofetch-like settings:

g_no_line_wrap = true
g_border       = false
g_display_sections     = false
g_fixed_hz_border_size = false -- Set this to the length of the size if enabled
g_center_title   = false
g_center_colors  = false
g_show_ascii_art = true
g_show_colors    = true
g_show_title     = true
g_16_colors      = true
g_title_underl   = true
g_info_underl    = true
g_colors_ordered = false
g_show_bw_clr    = true -- Show black and white colors too

g_ascii_art_name = "default_tux" -- Your ascii art file path

g_border_bg = "attr_reset"
g_border_fg = "fg_bwhite"

g_info_underl_bg = "attr_reset"
g_info_underl_fg = "fg_white"
g_info_underl_ch = " "

g_title_underl_bg = "attr_reset"
g_title_underl_fg = "fg_white"
g_title_underl_ch = "-"
g_border_chs = {
	v  = "│",
	h  = "─",
	j  = "├",
	tl = "┌",
	bl = "└"
}

g_title_format =
	"${attr_bold}${fg_cyan}${info_user}${fg_white}@${fg_cyan}${info_host}"
g_label_format =
	"${attr_bold}${fg_cyan}${label}${attr_reset}: "
g_section_format =
	" ${fg_bwhite}${section} "
g_color_format =
	"${color}███"

--]]

g_sections = {
	{
		name = "hardware",
		info = {
			{
				label = "devc",
				info_format = "${info_device}"
			},
			{
				label = "cpu",
				info_format = "${info_cpu}"
			},
			{
				label = "mem",
				info_format = "${info_mem_used}/${info_mem_total}"
			},
			{
				label = "swap",
				info_format = "${info_swap_used}/${info_swap_total}"
			}
		}
	},
	{
		name = "software",
		info = {
			{
				label = "os",
				info_format = "${info_os}"
			},
			{
				label = "kern",
				info_format = "${info_kernel}"
			},
			{
				label = "term",
				info_format = "${info_term}"
			},
			{
				label = "sh",
				info_format = "${info_shell}"
			},
			{
				label = "de",
				info_format = "${info_de}"
			},
			{
				label = "up",
				info_format = "${info_uptime}"
				-- or "${info_up_hours} ${info_up_mins} ${info_up_secs}",
				-- but this will output unwanted spaces if one of the
				-- variables is 0 (nil)
			},
			{
				label = "bios",
				info_format = "${info_bios_ver}"
			}
		}
	}
}

g_term_mode_raw = "raw -echo 2> /dev/null"

-- Colors and attributes
g_colors = {
	fg = {
		-- Foreground colors
		black   = 30,
		red     = 31,
		green   = 32,
		yellow  = 33,
		blue    = 34,
		magenta = 35,
		cyan    = 36,
		white   = 37,

		-- Bright variants
		grey     = 90,
		bred     = 91,
		bgreen   = 92,
		byellow  = 93,
		bblue    = 94,
		bmagenta = 95,
		bcyan    = 96,
		bwhite   = 97
	},
	bg = {
		-- Background colors
		black   = 40,
		red     = 41,
		green   = 42,
		yellow  = 43,
		blue    = 44,
		magenta = 45,
		cyan    = 46,
		white   = 47,

		-- Bright variants
		grey     = 100,
		bred     = 101,
		bgreen   = 102,
		byellow  = 103,
		bblue    = 104,
		bmagenta = 105,
		bcyan    = 106,
		bwhite   = 107
	}
}

g_attrs = {
	reset   = 0,
	bold    = 1,
	dim     = 2,
	italics = 3,
	underl  = 4,
	blink   = 5,
	reverse = 7
}

-- Default ascii art
g_ascii_art = {
	default_lua = {
		"",
		"       ${fg_grey}-  `  `  ` -  ${fg_blue}▄▄▄   ",
		"     ${fg_grey}`  ${fg_blue}▄▄██████▄▄  █████  ",
		"   ${fg_grey}`  ${fg_blue}▄████████▀▀▀▀▄▀███▀  ",
		"  ${fg_grey}`  ${fg_blue}█████████      █  ${fg_grey}`   ",
		" ${fg_grey}`  ${fg_blue}██████████      ██  ${fg_grey}`  ",
		" ${fg_grey}` ${fg_blue}▐███▀███████▄▄▄▄███▍ ${fg_grey}`  ",
		" ${fg_grey}` ${fg_blue}▐███ ███ ██ █ ▁ ███▍ ${fg_grey}`  ",
		" ${fg_grey}`  ${fg_blue}███ ███ ██ █▀▀ ███  ${fg_grey}`  ",
		"  ${fg_grey}.  ${fg_blue}██   █▁  ▁█ ▀ ██  ${fg_grey}.   ",
		"    ${fg_grey}  ${fg_blue}▀████████████▀ ${fg_grey}      ",
		"    ${fg_grey}`   ${fg_blue}▀▀██████▀▀   ${fg_grey}`     ",
		"      ${fg_grey}` -  _  _  - `       "
	},
	default_tux = {
		"",
		"          ${fg_grey}▄███▄          ",
		"         ${fg_grey}▄█████▄         ",
		"         ${fg_grey}██${bg_grey}${fg_white}${attr_bold}O${fg_grey}█${bg_grey}${fg_white}O${attr_reset}${fg_grey}██         ",
		"         ${fg_grey}█${fg_yellow}${bg_grey}▆███▆${attr_reset}${fg_grey}█         ",
		"       ${fg_grey}▓${bg_grey}█${fg_white}▓█${fg_yellow}${bg_white}▀▀▀${attr_reset}${fg_white}█▓${fg_grey}█▓       ",
		"      ${fg_grey}▓${bg_grey}${fg_white}▓████████▓${attr_reset}${fg_grey}█▓      ",
		"     ${fg_grey}▓${bg_grey}${fg_white}▓██████████▓${attr_reset}${fg_grey}█▓     ",
		"     ${fg_grey}▓${bg_grey}${fg_white}▓██████████▓${attr_reset}${fg_grey}█▓     ",
		"  ${fg_yellow}▄███${bg_grey}▄${fg_white}▓█████████▓${fg_yellow}▄${attr_reset}${fg_yellow}███▄  ",
		"  ${fg_yellow}██████${fg_grey}█${fg_white}${bg_grey}▓█████▓${fg_grey}█${attr_reset}${fg_yellow}██████  ",
		"  ${fg_yellow}▀██████${fg_grey}█${fg_white}${bg_grey}▓███▓${fg_grey}█${attr_reset}${fg_yellow}██████▀  "
	}
}

-- Checking command line parameters
function is_gvar_type(p_var, p_type)
	if p_type == "bool" then
		if _G[p_var] == "true" or _G[p_var] == "1" or _G[p_var] == true then
			_G[p_var] = true
		elseif _G[p_var] == "false" or _G[p_var] == "0" or _G[p_var] == false then
			_G[p_var] = false
		else
			print(
				'incorrect type of "' ..
				p_var .. '", should be "' .. p_type .. '"'
			)
			return nil
		end
		return true
	elseif p_type == "str" then
		_G[p_var] = tostring(_G[p_var])
		return true
	elseif p_type == "int" then
		_G[p_var] = tonumber(_G[p_var])
		if _G[p_var] == nil then
			print(
				'incorrect type of "' ..
				p_var .. '", should be "' .. p_type .. '"'
			)
			return nil
		else
			_G[p_var] = math.floor(_G[p_var])
			return true
		end
	elseif p_type == "false/int" then
		if _G[p_var] == "false" or _G[p_var] == "0" or _G[p_var] == false then
			_G[p_var] = false
			return true
		else
			_G[p_var] = tonumber(_G[p_var])
			if _G[p_var] == nil then
				print(
					'incorrect type of "' ..
					p_var .. '", should be "' .. p_type .. '"'
				)
				return nil
			else
				_G[p_var] = math.floor(_G[p_var])
				return true
			end
		end
	else
		print("unknown " .. p_var .. " type " .. p_type)
	end
end

g_modifiable_vars = {
	g_no_line_wrap = "bool",
	g_border = "bool",
	g_display_sections = "bool",
	g_fixed_hz_border_size = "false/int",
	g_center_title = "bool",
	g_center_colors = "bool",
	g_show_ascii_art = "bool",
	g_show_colors = "bool",
	g_show_title = "bool",
	g_16_colors = "bool",
	g_title_underl = "bool",
	g_info_underl = "bool",
	g_colors_ordered = "bool",
	g_show_bw_clr = "bool",
	g_ascii_art_name = "str",
	g_border_bg = "str",
	g_border_fg = "str",
	g_info_underl_bg = "str",
	g_info_underl_fg = "str",
	g_info_underl_ch = "str",
	g_title_underl_bg = "str",
	g_title_underl_fg = "str",
	g_title_underl_ch = "str",
	g_title_format = "str",
	g_label_format = "str",
	g_section_format = "str",
	g_color_format = "str"
}

for i, v in pairs(arg) do
	if v == "-v" or v == "--version" then
		print(
			"lysfetch version " ..
			tostring(g_version_major) .. "." ..
			tostring(g_version_minor) .. "." ..
			tostring(g_version_patch)
		)
		do return end -- Exit the program
	elseif v == "-h" or v == "--help" then
		print(
			"usage: app [options]\n" ..
			"options:\n" ..
			"    -h, --help          show the usage\n" ..
			"    -v, --version       lysfetch version\n" ..
			"    -vv, --vars         show all the variables and values\n" ..
			"    <variable>=<value>  set a variable"
		)
		do return end
	elseif v == "-vv" or v == "--vars" then
		print(
			"variables:\n" ..
			"    g_no_line_wrap          boolean    disable wrapping of lines\n" ..
			"    g_border                boolean    enable border around the info\n" ..
			"    g_display_sections      boolean    display sections of info\n" ..
			"    g_fixed_hz_border_size  false/int  a fixed border width\n" ..
			"    g_center_title          boolean    title will be centered\n" ..
			"    g_center_colors         boolean    colors will be centered\n" ..
			"    g_show_ascii_art        boolean    display the ascii art\n" ..
			"    g_show_colors           boolean    display the colors\n" ..
			"    g_show_title            boolean    display the title\n" ..
			"    g_16_colors             boolean    16 or 8 colors\n" ..
			"    g_title_underl          boolean    underline the title\n" ..
			"    g_info_underl           boolean    underline the info\n" ..
			"    g_colors_ordered        boolean    order the colors\n" ..
			"    g_show_bw_clr           boolean    show black and white colors\n" ..
			"    g_ascii_art_name        string     file path or name of default ascii art\n" ..
			"    g_border_bg             string     border background color\n" ..
			"    g_border_fg             string     border foreground color\n" ..
			"    g_info_underl_bg        string     background color of info underline\n" ..
			"    g_info_underl_fg        string     foreground color of info underline\n" ..
			"    g_info_underl_ch        string     the character used for info underline\n" ..
			"    g_title_underl_bg       string     background color of title underline\n" ..
			"    g_title_underl_fg       string     foreground color of title underline\n" ..
			"    g_title_underl_ch       string     the character used for title underline\n" ..
			"    g_title_format          string     title format\n" ..
			"    g_label_format          string     label format\n" ..
			"    g_section_format        string     section format\n" ..
			"    g_color_format          string     color format\n" ..
			"\nvalues:\n" ..
			"    boolean    true or false\n" ..
			"    int        a whole number\n" ..
			"    false/int  false or a whole number\n" ..
			"    string     text"
		)
		do return end
	else
		for name, val in v:gmatch("([%w_]+)%s*=%s*([_%p%s%w%${}%(%)%[%]]+)") do
			if g_modifiable_vars[name] ~= nil then
				_G[name] = val
			else
				print('no such modifiable variable "' .. name .. '"')
				do return end
			end
		end
	end
end

for i, v in pairs(g_modifiable_vars) do
	if is_gvar_type(i, v) == nil then
		do return end
	end
end

-- Terminal related functions
function set_attr(...)
	local attrs = {...}

	for _, v in pairs(attrs) do
		io.write("\x1b[" .. tostring(v) .. "m")
	end
end

function attr_str(p_attr)
	return "\x1b[" .. tostring(p_attr) .. "m"
end

function term_set_mode(mode)
	return os.execute("stty " .. mode)
end

function term_get_mode()
	local handle = io.popen("stty -g")
	if handle == nil then
		return nil
	end

	local mode = handle:read("*a")

	local success = handle:close()
	if not success then
		return nil
	end

	return mode
end

function get_pos()
	io.write("\x1b[6n")
	io.flush()
	-- Answer: \e[height;widthR

	local str = ""
	local ch
	ch = string.byte(io.read(1))
	if ch ~= 27 then
		return nil
	end
	ch = string.byte(io.read(1))
	if ch ~= 91 then
		return nil
	end

	local i = 0
	while ch ~= "R" do
		i = i + 1
		if i > 8 then
			return nil
		end

		ch = io.read(1)
		str = str .. ch
	end

	local h, w = str:match("(%d+);(%d+)R")
	if h == nil then
		return nil
	end

	return tonumber(w), tonumber(h)
end

function init()
	io.write("\x1b[s") -- Save the state
	local mode = term_get_mode()
	term_set_mode(g_term_mode_raw)

	io.write("\x1b[999B") -- Go to the most bottom position
	io.write("\x1b[999C") -- Go to the most right position
	g_term_width, g_term_height = get_pos()

	if g_term_width == nil then
		g_term_width = 999
	end
	if g_term_height == nil then
		g_term_height = 999
	end

	term_set_mode(mode)
	-- When my friend tried this in PopOS, for some reason setting it
	-- back to the mode it was broke environment variables for lua
	-- (os.getenv() always returned nil), but a fix is to set the mode
	-- to sane instead of what it was before, so this is a check for
	-- that
	if os.getenv("SHELL") == nil then
		term_set_mode("sane")
	end

	io.write("\x1b[u") -- Restore the state
end

-- Noticed how when the terminal width is not big enough for
-- the neofetch output to fit in it, it just gets cut off and
-- doesnt wrap? i tested this in other fetch programs and all
-- of them "broke" when i did that (the lines wrapped and it
-- was a mess)
-- this function is to prevent that from happening just like
-- in neofetch
function print_nowrap(p_str)
	if p_str == nil then
		io.write("\n")
	end

	io.write("\r")
	local var_start_check = false
	local in_var = false
	local var = ""
	local type = ""
	local i = 1
	-- We have to keep unicode characters in mind, they take up more than 1 byte!
	for ch in p_str:gmatch("([%z\1-\127\194-\244][\128-\191]*)") do
		if i > g_term_width then
			break
		end

		if in_var then
			if ch == "}" then
				if type == "fg" or type == "bg" then
					for i, v in pairs(g_colors[type]) do
						if i == var then
							io.write(attr_str(v))
						end
					end
				elseif type == "attr" then
					for i, v in pairs(g_attrs) do
						if i == var then
							io.write(attr_str(v))
						end
					end
				end

				in_var = false
			elseif ch == "_" and type == "" then
				type = var
				var = ""
			else
				var = var .. ch
			end
		elseif var_start_check then
			if ch == "{" then
				in_var = true
				var = ""
				type = ""

				var_start_check = false
			else
				io.write("$")
				i = i + 1

				if ch == "$" then
					var_start_check = true
				else
					io.write(ch)
					i = i + 1

					var_start_check = false
				end
			end
		else
			if ch == "$" then
				var_start_check = true
			else
				io.write(ch)
				i = i + 1
			end
		end
	end
	io.write("\n")
end

function print_wrap(p_str)
	io.write(str_rep_color_vars(p_str) .. "\n")
end

-- Handy functions that the standard lacks
function string.length(p_str)
	-- Yes, i know lua has the # operator for length, but for a string it
	-- returns the size in BYTES, not the amount of characters it has. we
	-- have to keep unicode characters in mind

	local len = 0
	for _ in p_str:gmatch("([%z\1-\127\194-\244][\128-\191]*)") do
		len = len + 1
	end

	return len
end

-- substring function that supports unicode
function string.sub(p_str, p_start, p_end)
	local str = ""
	local pos = 0

	if p_end == nil then
		p_end = p_str:length()
	end

	for ch in p_str:gmatch("([%z\1-\127\194-\244][\128-\191]*)") do
		pos = pos + 1

		if pos > p_end then
			break
		elseif pos >= p_start then
			str = str .. ch
		end
	end

	return str
end

function string.replace(p_str, p_to_rep, p_rep)
	if p_str:match(p_to_rep) then
		local ret = p_str:gsub(p_to_rep, p_rep)
		return ret
	end

	return p_str
end

function string.split(p_str, p_ch)
	local split_str = {}

	for str in p_str:gmatch("([^" .. p_ch .. "]+)") do
		table.insert(split_str, str)
	end

	return split_str
end

-- Info functions
function file_read_line(p_path, p_line_num)
	local handle = io.open(p_path, "r")
	if handle == nil then
		return nil
	end

	local contents = handle:read("*a")
	handle:close()

	if p_line_num == nil then
		return contents:replace("\n", "")
	end

	local contents_table = {}
	for str in string.gmatch(contents, "([^\n]+)") do
		table.insert(contents_table, str)
	end

	return contents_table[p_line_num]:replace("\n", "")
end

function file_read_line_split(p_path, p_line_num, p_ch, p_part)
	local text = file_read_line(p_path, p_line_num)

	if text == nil then
		return nil
	end

	if p_ch ~= nil then
		text = text:split(p_ch)[p_part]
	end

	local ret = text:replace('"', ""):gsub("^%s*(.-)%s*$", "%1")
	return ret
end

-- Data unit conversion
function normalize_mem(p_num)
	p_num = tonumber(p_num)

	if p_num > 1024 then
		return tostring(math.floor(p_num / 1024 + 0.5)) .. "MB"
	end

	return tostring(p_num) .. "kB"
end

-- Output buffer
g_buf = {}

-- Initializing the terminal and setting the print function to wrap/not wrap
if g_no_line_wrap then
	init()
	print = print_nowrap
else
	print = print_wrap
end

g_info = {}

-- Hardware
g_info.cpu    = file_read_line_split("/proc/cpuinfo", 5, ":", 2)
g_info.device = file_read_line("/sys/devices/virtual/dmi/id/product_name")

if g_info.device == "System Product Name" then
	g_info.device = "Custom build"
end

g_info.mem_total = tonumber(file_read_line_split("/proc/meminfo", 1, " ", 2))
g_info.mem_free  = tonumber(file_read_line_split("/proc/meminfo", 3, " ", 2))
g_info.mem_used  = g_info.mem_total - g_info.mem_free

g_info.swap_total = tonumber(file_read_line_split("/proc/meminfo", 15, " ", 2))
g_info.swap_free  = tonumber(file_read_line_split("/proc/meminfo", 16, " ", 2))
g_info.swap_used  = g_info.swap_total - g_info.swap_free

g_info.mem_total = normalize_mem(g_info.mem_total)
g_info.mem_free  = normalize_mem(g_info.mem_free)
g_info.mem_used  = normalize_mem(g_info.mem_used)

g_info.swap_total = normalize_mem(g_info.swap_total)
g_info.swap_free  = normalize_mem(g_info.swap_free)
g_info.swap_used  = normalize_mem(g_info.swap_used)

-- Software
g_info.home   = os.getenv("HOME")
g_info.user   = os.getenv("USER")
g_info.host   = file_read_line("/etc/hostname")
g_info.shell  = os.getenv("SHELL")
g_info.term   = os.getenv("TERM")
g_info.os     = file_read_line_split("/etc/os-release", 1, "=", 2)
g_info.kernel = file_read_line("/proc/sys/kernel/osrelease")
g_info.de     = os.getenv("XDG_CURRENT_DESKTOP")
g_info.bios_ver = file_read_line("/sys/devices/virtual/dmi/id/bios_version")

if g_info.de == nil then
	g_info.de = os.getenv("DESKTOP_SESSION")
end

g_info.uptime   = ""
g_info.up_secs  = tonumber(file_read_line_split("/proc/uptime", nil, ".", 1))
g_info.up_mins  = nil
g_info.up_hours = nil

if g_info.up_secs > 3600 then
	g_info.up_hours = math.floor(g_info.up_secs / 3600)
end

if g_info.up_secs > 60 then
	g_info.up_mins = math.floor(g_info.up_secs / 60)
end

if g_info.up_mins ~= nil then
	if g_info.up_hours ~= nil then
		g_info.up_mins = g_info.up_mins - g_info.up_hours * 60
		g_info.up_secs = g_info.up_secs - g_info.up_hours * 3600

		g_info.up_hours = tostring(g_info.up_hours) .. "h "
		g_info.uptime = g_info.up_hours
	end

	g_info.up_secs = g_info.up_secs - g_info.up_mins * 60

	g_info.up_mins  = tostring(g_info.up_mins) .. "min "
	g_info.uptime = g_info.uptime .. g_info.up_mins
else
	g_info.up_mins  = "0min"
	g_info.up_hours = "0h"
end

g_info.up_secs = tostring(g_info.up_secs) .. "s"
g_info.uptime = g_info.uptime .. g_info.up_secs

-- lysfetch info table
local border_color = "${" .. g_border_bg .. "}${" .. g_border_fg .. "}"

-- Setting the ascii art
if g_ascii_art[g_ascii_art_name] == nil then
	if g_ascii_art_name:sub(1, 1) == "~" then
		g_ascii_art_name = g_info.home .. g_ascii_art_name:sub(2)
	end

	local handle = io.open(g_ascii_art_name, "r")
	if handle == nil then
		print('file "' .. g_ascii_art_name .. '" not found')
		do return end
	else
		local contents = handle:read("*a")
		handle:close()

		local contents_table = {}
		for str in string.gmatch(contents, "([^\n]+)") do
			table.insert(contents_table, str:replace("\n", ""))
		end

		g_ascii_art[g_ascii_art_name] = contents_table
	end
end

function str_rm_color(p_str)
	p_str = p_str:replace("%${fg_%a+}", "")
	p_str = p_str:replace("%${bg_%a+}", "")
	p_str = p_str:replace("%${attr_%a+}", "")

	return p_str
end

function str_rep_color_vars(p_str)
	for i, v in pairs(g_colors) do
		for j, v2 in pairs(v) do
			p_str = p_str:replace("${" .. i .. "_" .. j .. "}", attr_str(v2))
		end
	end

	for i, v in pairs(g_attrs) do
		p_str = p_str:replace("${attr_" .. i .. "}", attr_str(v))
	end

	return p_str
end

-- Making sure that char variable are actually chars and not strings
if g_title_underl_ch:length() > 1 then
	g_title_underl_ch = g_title_underl_ch:sub(1, 1)
end

for i, v in pairs(g_border_chs) do
	if v:length() > 1 then
		g_border_chs[i] = v:sub(1, 1)
	end
end

-- Finding the longest label for aligning
local longest_label_len = 0
if g_label_format:match("${align_spaces}") then
	for _, section in pairs(g_sections) do
		for _, info in pairs(section.info) do
			local len = str_rm_color(info.label):length()
			if len > longest_label_len then
				longest_label_len = len - 1
			end
		end
	end
end

-- Pushing info to the buffer, saving section positions
local hz_borders_len = 0
local cur_line_idx = 0
for i, v in pairs(g_sections) do
	cur_line_idx = cur_line_idx + 1
	v.line_idx = cur_line_idx

	for _, vb in pairs(v.info) do
		local space = ""
		for i = vb.label:length(), longest_label_len do
			space = space .. " "
		end

		local label = g_label_format:replace("${label}", vb.label)
		label = label:replace("${align_spaces}", space)

		local info = vb.info_format
		for i, vc in pairs(g_info) do
			if vc == nil then
				vc = "Unknown"
			end
			info = info:replace("${info_" .. i .. "}", vc)
		end

		local str = label .. info
		if g_border then
			str = g_border_chs.v .. str
		end

		local len = str_rm_color(str):length()
		if not g_fixed_hz_border_size and len > hz_borders_len then
			hz_borders_len = len
		end

		if g_border then
			str = border_color .. str
		end

		table.insert(g_buf, str)
		cur_line_idx = cur_line_idx + 1
	end
end

-- Fixing horizontal border size
if g_fixed_hz_border_size then
	hz_borders_len = g_fixed_hz_border_size
else
	hz_borders_len = hz_borders_len - 1
	if hz_borders_len < 0 then
		hz_borders_len = 0
	end
end

-- Adding borders
if g_border then
	local str = ""
	for i = 0, hz_borders_len do
		str = str .. g_border_chs.h
	end

	table.insert(g_buf, border_color .. g_border_chs.bl .. str)

	if not g_display_sections then
		table.insert(g_buf, 1, border_color .. g_border_chs.tl .. str)
	end
else
	hz_borders_len = hz_borders_len + 1
end

-- Pushing sections to the buffer
if g_display_sections then
	for i, v in pairs(g_sections) do
		local section = ""
		local name = g_section_format:replace("${section}", v.name)
		local name_noclr = str_rm_color(name)
		local len = name_noclr:length()
		if len > hz_borders_len then
			section = name:sub(1, hz_borders_len - 3) .. " ..."
		else
			local len = hz_borders_len - len - 1

			local side_a = 0
			local side_b = 0
			if g_border then
				side_a = math.floor(len / 2)
				side_b = math.ceil(len / 2)
			else
				side_a = math.ceil(len / 2)
				side_b = math.floor(len / 2)
			end

			for i = 0, side_a do
				section = section .. g_border_chs.h
			end
			section = section .. name .. border_color
			for i = 0, side_b do
				section = section .. g_border_chs.h
			end
		end
		if g_border then
			if i == 1 then
				section = g_border_chs.tl .. section
			else
				section = g_border_chs.j .. section
			end
		end

		section = border_color .. section

		table.insert(g_buf, v.line_idx, section)
	end
end

-- Pushing title to the buffer
if g_show_title then
	for i, v in pairs(g_info) do
		if v == nil then
			v = "Unknown"
		end
		g_title_format = g_title_format:replace("${info_" .. i .. "}", v)
	end

	local len = str_rm_color(g_title_format):length()
	local temp = len
	local space = ""
	if g_center_title and len < hz_borders_len then
		len = math.floor(hz_borders_len / 2 - len / 2 + 0.5)

		for i = 0, len do
			space = space .. " "
		end
		g_title_format = space .. g_title_format
	end

	table.insert(g_buf, 1, g_title_format)

	-- Pushing title underline to the buffer
	if g_title_underl then
		local str = ""
		for i = 0, temp - 1 do
			str = str .. g_title_underl_ch
		end

		str = "${" .. g_title_underl_bg .. "}${" .. g_title_underl_fg .. "}" .. str
		if g_center_title then
			str = space .. str
		end

		table.insert(g_buf, 2, str)
	end
end

-- Pushing info underline to the buffer
if g_info_underl then
	local str = ""
	for i = 0, hz_borders_len do
		str = str .. g_info_underl_ch
	end

	str = "${" .. g_info_underl_bg .. "}${" .. g_info_underl_fg .. "}" .. str

	table.insert(g_buf, str)
end

-- Pushing colors to the buffer
if g_show_colors then
	local colors
	if g_colors_ordered then
		colors = {
			"fg_red",
			"fg_yellow",
			"fg_green",
			"fg_cyan",
			"fg_blue",
			"fg_magenta"
		}
	else
		colors = {
			"fg_red",
			"fg_green",
			"fg_yellow",
			"fg_blue",
			"fg_magenta",
			"fg_cyan"
		}
	end

	if g_show_bw_clr then
		table.insert(colors, 1, "fg_black")
		table.insert(colors, "fg_white")
	end

	local str = ""
	for _, v in pairs(colors) do
		str = str .. g_color_format:replace("${color}", "${" .. v .. "}")
	end

	local len = str_rm_color(str):length()
	local space = ""
	if g_center_colors and len < hz_borders_len then
		len = math.floor(hz_borders_len / 2 - len / 2 + 0.5)

		for i = 0, len do
			space = space .. " "
		end
		str = space .. str
	end

	table.insert(g_buf, str)

	-- Pushing the 8 bright colors to the buffer
	if g_16_colors then
		local bcolors
		if g_colors_ordered then
			bcolors = {
				"fg_bred",
				"fg_byellow",
				"fg_bgreen",
				"fg_bcyan",
				"fg_bblue",
				"fg_bmagenta"
			}
		else
			bcolors = {
				"fg_bred",
				"fg_bgreen",
				"fg_byellow",
				"fg_bblue",
				"fg_bmagenta",
				"fg_bcyan"
			}
		end

		if g_show_bw_clr then
			table.insert(bcolors, 1, "fg_grey")
			table.insert(bcolors, "fg_bwhite")
		end

		local str = ""
		for _, v in pairs(bcolors) do
			str = str .. g_color_format:replace("${color}", "${" .. v .. "}")
		end

		if g_center_colors then
			str = space .. str
		end

		table.insert(g_buf, str)
	end
end

-- Adding ascii art to the buffer
if g_show_ascii_art then
	-- Calculating ascii art width
	local width = 0
	for _, v in pairs(g_ascii_art[g_ascii_art_name]) do
		local len = str_rm_color(v):length()
		if len > width then
			width = len
		end
	end

	-- Adding the art to the buffer
	local i = 1
	while g_ascii_art[g_ascii_art_name][i] ~= nil or g_buf[i] ~= nil  do
		if g_ascii_art[g_ascii_art_name][i] == nil then
			local space = ""
			for i = 0, width do
				space = space .. " "
			end

			g_buf[i] = space .. g_buf[i]
		elseif g_buf[i] == nil then
			table.insert(g_buf, g_ascii_art[g_ascii_art_name][i])
		else
			len = width - str_rm_color(g_ascii_art[g_ascii_art_name][i]):length()

			local space = ""
			for i = 0, len do
				space = space .. " "
			end

			g_buf[i] = g_ascii_art[g_ascii_art_name][i] .. space .. g_buf[i]
		end

		i = i + 1
	end
end

-- Outputting the buffer
for _, v in pairs(g_buf) do
	print(v) -- print is either print_nowrap or print_wrap
	set_attr(g_attrs.reset)
end

io.write("\n")
