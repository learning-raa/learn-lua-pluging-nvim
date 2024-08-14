-- simple api-function
local function say_hellow()
	print('---> hell-0')
end

-- something more interesting
local api = vim.api

local buf

-- convention setup finction
-- require'module'.setup({ key = "value"})
local function setup(parameters)
	print('--> raa-xample.SETUPing')
	-- create temporary bufffer and name it
	buf = api.nvim_create_buf(true, true)
	api.nvim_buf_set_name(buf, '*raa-buf*')
end


local function run_command()
	-- create floating window connected to 'buf'
	local win_id = api.nvim_open_win(
		buf,
		true,
		{
			relative = 'win', col = 10, row = 10, width = 30, height = 5,
			border = 'rounded',
			style = 'minimal',
		}
	)
end


-- add a command
vim.api.nvim_create_user_command(
	'RaaCommand',
	function(input)
		-- print "----> inside RaaCommand"
		run_command()
	end,
	{bang = true, desc = 'an example raa-command'}
)

-- export api
return {
	setup = setup,
	sayHellow = say_hellow,
}

