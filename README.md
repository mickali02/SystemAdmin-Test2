# CMPS4232 - Test #2

This repository contains a bash shell script created for the CMPS4232 Test #2 Preparatory Task. The script, named `make-go-dir`, automates the setup of a standard directory structure for a new Go API project.

## Overview

Developing a new project involves a repetitive setup process. This script streamlines that process by creating a conventional Go project layout, initializing a `go.mod` file, and providing a sample `main.go` file, allowing the developer to start coding features immediately.

## Features

The script performs the following actions as per the assignment requirements:

-   **Argument Validation**: Ensures that the user provides exactly two arguments: a project name and a module identifier.
-   **User Confirmation**: Prompts the user for confirmation before creating any files or directories, preventing accidental changes.
-   **Directory Scaffolding**: Creates a standardized project structure including `bin`, `cmd/api`, `internals`, `migrations`, and `remote` directories.
-   **File Generation**: Creates `go.mod`, `make-file`, and a `main.go` file inside `cmd/api/`.
-   **Go Module Initialization**: Populates the `go.mod` file with the correct module path using the provided project name and identifier.
-   **Boilerplate Code**: Writes a simple "Hello world!" program to `main.go` to ensure the project is runnable out-of-the-box.
-   **User Guidance**: Outputs a final message instructing the user how to compile and run their new project.

## Prerequisites

Before running this script, you must have the following installed on your system:

-   A Linux-based environment (like Ubuntu Server) with a Bash shell.
-   The Go programming language toolchain.

## How to Use

Follow these steps to set up a new Go project using the script.

### 1. Make the Script Executable

First, you need to give the script execution permissions.

```bash
chmod +x make-go-dir