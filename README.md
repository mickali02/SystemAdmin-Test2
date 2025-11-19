# CMPS4232 - Test #2: Go Project Setup Script

This repository contains a Bash script, `make-go-dir`, which automates creating a standard directory structure for a Go API project.

## Purpose

Creating a new Go project usually involves repetitive setup. This script streamlines the process by generating directories, initializing `go.mod`, and adding a sample `main.go` file so you can start coding immediately.

## Script Features

* **Argument Validation**
  Requires exactly two arguments:

  1. Project name (top-level directory)
  2. Module identifier (for `go.mod`)
     If the arguments are missing or incorrect, the script shows usage instructions and exits.

* **User Confirmation**
  Prompts before creating directories:

  ```
  I am about to create a directory structure named '<project-name>'.
  Do you want me to continue? [Yes/no]
  ```

  * `Yes` → creates directories and files
  * `no` → prints `Abort.` and exits

* **Directory Structure Creation**

  ```
  .
  |-- bin
  |-- cmd
  |   |-- api
  |       |-- main.go
  |-- internals
  |-- migrations
  |-- remote
  |-- go.mod
  |-- make-file
  ```

* **File Initialization**

  * `main.go` contains a "Hello world!" program
  * `go.mod` uses the module identifier (`<project-name>.<module-identifier>`)

* **Completion Message**

  ```
  I have created a main.go file for you to test the directory structure.
  Type go run ./cmd/api at the root directory of your project to test your project.
  Thank you.
  ```

## Prerequisites

* Linux or macOS with Bash
* Go installed and available in your PATH

## Usage

1. Make the script executable:

   ```bash
   chmod +x make-go-dir
   ```

2. Run the script with your project name and module identifier:

   ```bash
   ./make-go-dir <project-name> <module-identifier>
   ```

   Example:

   ```bash
   ./make-go-dir karpbox umana-amilcar.net
   ```

This generates a ready-to-run Go project structure with a sample `main.go`.
