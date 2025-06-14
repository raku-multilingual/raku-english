# English Language Module for Raku

A Raku module that provides UK English spelling variants alongside US English spellings, allowing developers to write code using their preferred spelling conventions while maintaining full compatibility.

## Overview

This module bridges the spelling gap between UK and US English in programming. Rather than forcing developers to adapt to one spelling convention, it provides both variants for common programming terms, making code more natural to write for developers from different English-speaking regions.

## Installation

```bash
zef install English
```

Or install from source:
```bash
zef install .
```

## Quick Start

```raku
use English;

# Both UK and US spellings work identically
say capitalise("hello world");    # UK spelling -> Hello World
say capitalize("hello world");    # US spelling -> Hello World

# Mathematical operations
my $result = maths_add(5, 3);     # UK: "maths" -> 8
my $same = math_add(5, 3);        # US: "math" -> 8

# Boolean values
if yes { say "Affirmative!" }     # British -> True
if aye { say "Och aye!" }         # Scottish -> True
```

## Features

### String Functions

All string functions have both UK and US variants:

| UK Spelling | US Spelling | Description |
|------------|-------------|-------------|
| `capitalise` | `capitalize` | Convert string to title case |
| `lower_case` | `lowercase` | Convert to lowercase |
| `upper_case` | `uppercase` | Convert to uppercase |
| `centre` | `center` | Center text with padding |
| `colour_code` | `color_code` | Get ANSI color codes |
| `normalise` | `normalize` | Clean and standardize strings |
| `emphasise` | `emphasize` | Add emphasis markers |
| `serialise` | `serialize` | Convert data to string format |
| `analyse_text` | `analyze_text` | Get text statistics |

#### Example Results

- `capitalise("london bridge")` → "London Bridge"
- `upper_case("whisper")` → "WHISPER"
- `centre("UK", 10)` → "    UK    "
- `center("US", 10, "*")` → "****US****"
- `colour_code("red") ~ "Error!" ~ "\e[0m"` → Displays "Error!" in red
- `normalise("  Hello   World  ")` → "hello-world"
- `analyse_text("Hello\nWorld")` → {chars => 11, words => 2, lines => 2}

### Mathematical Functions

Mathematical functions use "maths" (UK) vs "math" (US):

| UK Spelling | US Spelling | Description |
|------------|-------------|-------------|
| `maths_add` | `math_add` | Addition |
| `maths_subtract` | `math_subtract` | Subtraction |
| `maths_multiply` | `math_multiply` | Multiplication |
| `maths_divide` | `math_divide` | Division |
| `maths_round` | `math_round` | Round to nearest integer |
| `maths_floor` | `math_floor` | Round down |
| `maths_ceiling` | `math_ceiling` | Round up |
| `maths_abs` | `math_abs` | Absolute value |
| `maths_sqrt` | `math_sqrt` | Square root |
| `maths_power` | `math_power` | Exponentiation |

#### Example Results

- `maths_add(10, 5)` → 15
- `math_multiply(3, 7)` → 21
- `maths_round(3.7)` → 4
- `math_floor(3.7)` → 3
- `maths_ceiling(3.2)` → 4
- `maths_sqrt(144)` → 12
- `math_power(2, 8)` → 256
- `maths_abs(-42)` → 42

### Boolean Values

The module provides regional variants for boolean values:

| British | Scottish | Value |
|---------|----------|-------|
| `yes` | `aye` | True |
| `no` | `nay` | False |

#### Example Results

- Conditions: `if yes { ... }` or `if aye { ... }` ⟶ Code executes
- Negation: `unless no { ... }` or `unless nay { ... }` ⟶ Code executes
- Boolean operations:
  - `yes && aye` ⟶ True
  - `no || nay` ⟶ False
  - `!nay` ⟶ True

## Design Philosophy

This module follows several key principles:

1. **Equal Treatment**: Neither UK nor US spelling is treated as "primary" - both are first-class citizens
2. **Functional Implementation**: Every exported function is fully implemented, no placeholders
3. **Consistency**: Function pairs always behave identically regardless of spelling variant used
4. **Practical Focus**: Includes commonly used functions where UK/US spelling differences occur

## Use Cases

- **International Teams**: Teams with members from different English-speaking countries can use their preferred spellings
- **Educational Settings**: Students can use familiar spellings while learning programming
- **Code Migration**: Gradually transition codebases between spelling conventions
- **Personal Preference**: Individual developers can choose their preferred style

## Complete Function Reference

### String Manipulation
- `capitalise`/`capitalize($str)` - Convert to title case
- `lower_case`/`lowercase($str)` - Convert to lowercase  
- `upper_case`/`uppercase($str)` - Convert to uppercase
- `centre`/`center($str, $width, $fill = ' ')` - Center with padding
- `normalise`/`normalize($str)` - Clean and standardize
- `emphasise`/`emphasize($str)` - Add emphasis (*text*)
- `serialise`/`serialize($data)` - Convert to string representation

### String Utilities
- `colour_code`/`color_code($name)` - ANSI color codes
  - Supports: red, green, blue, grey/gray
- `analyse_text`/`analyze_text($text)` - Returns hash with:
  - `chars`: Character count
  - `words`: Word count  
  - `lines`: Line count

### Mathematics
- `maths_add`/`math_add($a, $b)` - Addition (a + b)
- `maths_subtract`/`math_subtract($a, $b)` - Subtraction (a - b)
- `maths_multiply`/`math_multiply($a, $b)` - Multiplication (a × b)
- `maths_divide`/`math_divide($a, $b)` - Division (a ÷ b)
- `maths_round`/`math_round($n)` - Round to nearest integer
- `maths_floor`/`math_floor($n)` - Round down
- `maths_ceiling`/`math_ceiling($n)` - Round up
- `maths_abs`/`math_abs($n)` - Absolute value
- `maths_sqrt`/`math_sqrt($n)` - Square root
- `maths_power`/`math_power($base, $exp)` - Exponentiation (base^exp)

### Boolean Constants
- `yes` = `aye` = True
- `no` = `nay` = False

## Testing

The module includes a comprehensive test suite to ensure all functions work correctly:

```bash
# Run all tests
raku t/run-all-tests.raku

# Or run individual test files
raku t/01-basic.rakutest
raku t/02-text-processing.rakutest
```

The tests verify all functionality including:
- String manipulation functions
- Math/Maths functions
- Boolean values and operations
- Text processing utilities

## Contributing

https://github.com/raku-multilingual/raku-english

## License

Artistic License 2.0

## Author

Danslav Slavenskoj

## See Also

- [Raku Documentation](https://docs.raku.org)
- [British vs American Spelling](https://en.wikipedia.org/wiki/American_and_British_English_spelling_differences)