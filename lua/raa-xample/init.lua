-- init.lua (raa-xample)
print('--> inside raa-xample..')

-- convention setup finction
-- require'module'.setup({ key = "value"})
local function setup(parameters)
	print('--> SETUPing')
end

-- add a command
vim.api.nvim_create_user_command(
	'RaaCommand',
	function(input)
		print "----> inside RaaCommand"
	end,
	{bang = true, desc = 'an example raa-command'}
)


local function say_hellow()
	print('---> hell-0')
end

local function print_test()
	print('#### TEST ####')
end

return {
	setup = setup,
	sayHellow = say_hellow,
	printTest = print_test,
}

