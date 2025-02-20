--  Generate expression fn will get an input string
--  Use `{{range}}"` to get a random number from distance, it expects two arguments.
--  If you place a static number, it won't change, static numbers will not be changed
--
--  Example:
--  `input = ((({10-50} * 2) - 10) / 30)`
--  `output = (((47 * 2) - 10) / 30)`
--
--  It will use math symbols as you use on your computer
--  `+ - * / ()`
--
--- @param input string
--- @return string
local generate_expression = function(input)
  local output = input:gsub("{(%d+)%-(%d+)}", function(min, max)
    return math.random(min, max)
  end)

  return output
end

local expression = generate_expression "{100-999} * 2 - {100-999}"
print("math_expression", expression)

-- resolve_expression fn will get an expression string and return the result
--
--  Example:
--  `input = "(2 * 40) - 10"`
--  `output = 80`
--
-- it will use math symbols as you use on your computer
-- `+ - * / ()`
--
--- @param math_expression string
--- @return string
local resolve_expression = function(math_expression)
  local func, err = load("return " .. math_expression)

  if err then
    print("err" .. err)
    return "Could not resolve expression, please check your input."
  end

  ---@cast func -nil
  local value = func()
  return value
end

local result = resolve_expression(expression)

print("result: ", result)
