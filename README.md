# Go API Project Directory Setup Script

This script is a simple bash utility to help Go developers quickly set up a standard directory structure for their API projects.

## Description

This script automates the creation of a conventional Go project layout, including a `main.go` file with a "Hello, World!" program and a `go.mod` file initialized with a specified module identifier.

## How to Use

To use this script, you need to provide two arguments: the desired root directory name for your project and a unique identifier for the `go.mod` file.

### Prerequisites

- You must have Go installed on your system.

### Execution

1.  **Make the script executable:**
    ```bash
    chmod +x make-go-dir
    ```

2.  **Run the script with your desired directory name and identifier:**
    ```bash
    ./make-go-dir <root-directory-name> <your-identifier>
    ```
    For example:
    ```bash
    ./make-go-dir karpbox garbutt-mickali.net
    ```

### Post-Execution Steps

After the script has run successfully, you can test the created Go project by running the following command from the root directory of your new project:

```bash
go run ./cmd/api