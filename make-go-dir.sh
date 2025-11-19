#!/bin/bash

# --- Step 1: Check for exactly 2 arguments ---
if [ $# -ne 2 ]; then
    echo "You need to provide two arguments for this script to work."
    echo "Usage: make-go-dir <root directory name> <identifier name>"
    exit 1
fi

ROOT_DIR=$1
IDENTIFIER=$2

# --- Step 2: Confirm with user ---
echo "I am about to create a directory structure named '$ROOT_DIR'."
read -p "Do you want me to continue? [Yes/no] " CONFIRM

if [ "$CONFIRM" == "no" ]; then
    echo "Abort."
    exit 0
fi

# --- Step 3: Create directories ---
echo "Create directory structure..."

mkdir -p "$ROOT_DIR/bin"
mkdir -p "$ROOT_DIR/cmd/api"
mkdir -p "$ROOT_DIR/internals"
mkdir -p "$ROOT_DIR/migrations"
mkdir -p "$ROOT_DIR/remote"

# --- Step 4: Create main.go ---
cat <<EOF > "$ROOT_DIR/cmd/api/main.go"
// File: cmd/api/main.go

package main

import "fmt"

func main() {
    fmt.Println("Hello world!")
}
EOF

# --- Step 5: Create go.mod with identifier ---
echo "module ${ROOT_DIR}.${IDENTIFIER}" > "$ROOT_DIR/go.mod"

# --- Step 6: Create empty make-file ---
touch "$ROOT_DIR/make-file"

# --- Step 7: Final user message ---
echo "I have created a main.go file for you to test the directory structure."
echo "Type 'go run ./cmd/api' at the root directory of your project to test your project."
echo "Thank you."
