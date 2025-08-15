# LLM Cmd 2

Inspired by [llm-cmd](https://github.com/simonw/llm-cmd)

LLM Cmd 2 generates shell commands based on natural language prompts. The output is loaded into the user's shell:

![demo](./demos/demo.gif)

You can also use `llm-cmd` to fix commands that resulted in an error, without having to retype anything:

![demo](./demos/fix.gif)

LLM Cmd 2 iterates on the original package:
- Includes OS information in prompts for more accurate command generation.
- Loads output into the shell rather than executing directly, so commands appear in history.

## Installation

1. First, install the [llm CLI tool](https://github.com/simonw/llm)
2. Run the installation script:
   ```bash
   ./install.sh
   ```
3. Restart your terminal or run:
   ```bash
   source ~/.zshrc
   ```

## Usage

```bash
llmcmd "your natural language request"
```

## Examples

```bash
# Find files
llmcmd "find all Python files in current directory"

# Process management
llmcmd "kill process on port 3000"

# File operations
llmcmd "compress this folder to a zip file"
llmcmd "extract archive.tar.gz"

# Git operations
llmcmd "undo last git commit"
llmcmd "create new branch called feature-auth"

# System information
llmcmd "show disk usage"
llmcmd "list running processes sorted by memory usage"
```
