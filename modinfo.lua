local chinese = locale == "zh" or locale  == "zhr" or locale  == "zhs"

name = chinese and "排队论加强plus" or "QuickAction for ActionQueue pro"

description = chinese and 
[[
	当你身上有对应的工具时,排队论可以选择对应的目标并且在工作队列中自动切换工具,如果离下一个目标过远,会自动切手杖
	此版本会将tony老师的lazy controls的排队论改动融合进来,意在解决同时开启qaaq和lazy controls的bug,成为更强大的排队论优化补丁.
]] 
or
[[
When the player has the tool for the target,ActionQueue can select some additional targets and 
automatically switch the tools while working.If the player far from the next target, cane or orange staff will be equip.

]]

author = "littledro and tony"
version = "1.0"
api_version_dst = 10

icon_atlas = "modicon.xml"
icon = "modicon.tex"

dst_compatible = true
all_clients_require_mod = false
client_only_mod = true

configuration_options = {
	{
		name = "tool_container",
		label = chinese and "工具位置" or "container of the tool",
		hover = chinese and "选择工具在哪才能自动自动装备" or "Choose where the tool automatically equips",
		options = {
			{description = chinese and "仅物品栏" or "only inventory", data = 0},
			{description = chinese and "仅背包" or "only backpack", data = 1},
            {description = chinese and "身上所有地方" or "All containers", data = 2},
		},
		default = 0,
	},
	{
		name = "collect_items",
		label = chinese and "收集物品" or "collect items",
		hover = chinese and "自动收集的砍树模式收集哪些物品" or "autocollect chop_mod:which items to collect",
		options = {
			{description = chinese and "收集木头果实" or "log and pinecone", data = 0},
			{description = chinese and "仅收集木头" or "only log", data = 1},
			{description = chinese and "仅收集果实" or "only pinecone", data = 2},
			{description = chinese and "只铲不收集" or "only chop", data = 3},
			{description = chinese and "原版全收集" or "Original but can chop", data = 4},
		},
		default = 0,
	},
	{
		name = "crafting_allowed",
		label = chinese and "自动制造工具" or "auto craft tool",
		hover = chinese and "工作队列中是否自动制造工具" or "auto craft tool in work queue",
		options = {
			{description = chinese and "制作" or "Yes", data = true},
			{description = chinese and "不制作" or "No", data = false},
		},
		default = false,
	},
	{
		name = "everything_chop",
		label = chinese and "提灯砍树" or "everything chop",
		hover = chinese and "提灯砍树的操作" or "lantern can chop trees",
		options = {
			{description = chinese and "开" or "ON", data = true},
			{description = chinese and "关" or "OFF", data = false},
		},
		default = false,
	},
}