-- init.lua (raa-xample)
print('--> inside raa-xample..')

local function setup(list)
	print('setting up..')
end

local function say_hellow()
	print('---> hell-0')
end

local function print_test()
	print('#### TEST ####')
end

return {
	setup = setup,
	sayHellow = say_hellow,
	printTest = print_test
}

