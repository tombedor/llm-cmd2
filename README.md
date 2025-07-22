# LLM Cmd 2

Inspired by [llm-cmd](https://github.com/simonw/llm-cmd)

LLM Cmd 2 generates shell commands based on natural language prompts. The output is loaded into the user's shell:

![demo](./llmcmd2.gif)

LLM Cmd 2 iterates on the original package:
- Includes OS information in prompts for more accurate command generation.
- Loads output into the shell rather than executing directly, so commands appear in history.

## Installation

1. First, install the [llm CLI tool](https://github.com/simonw/llm)
2. Run the installation script:
   ```bash
   curl -fsSL https://raw.githubusercontent.com/tombedor/llm-cmd2/refs/heads/main/install.sh | /bin/bash
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
