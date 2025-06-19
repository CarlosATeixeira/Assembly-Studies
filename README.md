# 🧠 Assembly - Hello World (Windows GUI)

## 📄 Description

This repository contains a basic Assembly (x86-64) program that calls the Windows API to show a MessageBox with the text **"Hello, World!"**.  
The goal is to experiment with calling external functions (`MessageBoxA` and `ExitProcess`) using NASM syntax.

## ⚙️ Tools & Environment

-   **Assembler:** NASM
-   **Platform:** Windows x64
-   **Linker:** MSVC (or compatible) to resolve WinAPI functions

## 🔧 Build Instructions

### 1. Assemble:

```bash
nasm -f win64 hello.asm -o hello.obj
```

### 2. Link:

```bash
link hello.obj /subsystem:windows /defaultlib:user32.lib /defaultlib:kernel32.lib
```

Obs: use o Developer Command Prompt for MSVC ou configure libs corretamente no seu linker.

## 🧠 Key Concepts

-   extern MessageBoxA, ExitProcess: import Windows API functions.

-   Registers: rcx, rdx, r8, r9 usados para passagem de parâmetros conforme o padrão de chamada Windows x64.

-   lea usado para obter endereços relativos das strings declaradas na .data.

## 📂 Files

-   hello.asm - main source code

-   hello.obj - object file (generated)

-   hello.o - possibly alternative object (não usado diretamente no Windows link padrão)

## 🗒️ Notes

-   This was a learning experiment to understand low-level WinAPI integration in Assembly.

-   It's not meant to be efficient or safe - purely educational.
