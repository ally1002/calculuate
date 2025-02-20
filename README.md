# Math Expression Generator

A Lua module for generating and resolving mathematical expressions with support for random number generation within specified ranges.

## Features

- Generate mathematical expressions with random number placeholders
- Resolve mathematical expressions using standard operators (+, -, *, /, and parentheses)
- Simple and lightweight implementation
- Safe expression evaluation using Lua's `load` function

## Usage

### Generate Expression

The `generate_expression` function takes a string containing placeholders for random numbers and returns a string with those placeholders replaced with random values.

```lua
local expression = generate_expression("{100-999} * 2 - {100-999}")
-- Example output: "547 * 2 - 123"
```

Placeholders format: `{min-max}`
- `min`: Minimum value (inclusive)
- `max`: Maximum value (inclusive)

### Resolve Expression

The `resolve_expression` function takes a mathematical expression string and returns the calculated result.

```lua
local result = resolve_expression("(2 * 40) - 10")
-- Output: 70
```

## Example

```lua
-- Generate an expression with random numbers
local expression = generate_expression("{100-999} * 2 - {100-999}")
print("Generated expression:", expression)

-- Resolve the generated expression
local result = resolve_expression(expression)
print("Result:", result)
```

## Error Handling

The `resolve_expression` function includes basic error handling:
- Returns an error message if the expression cannot be evaluated
- Uses Lua's `load` function for safe evaluation

## Limitations

- Only supports basic mathematical operators (+, -, *, /, and parentheses)
- Random number generation is limited to integer values
- Expressions must follow valid Lua mathematical syntax

## Contributing

Feel free to submit issues and enhancement requests!
