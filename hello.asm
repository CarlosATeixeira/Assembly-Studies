section .data
   hello_message db 'Hello, World!',0
   title_message db 'Message Title',0

section .text
extern  MessageBoxA, ExitProcess

global _start

_start:
    ; int MessageBoxA(HWND hWnd, LPCSTR lpText, LPCSTR lpCaption, UINT uType)
    lea r8, [rel title_message]   ; lpCaption = "Message Title"
    lea rdx, [rel hello_message]  ; lpText = "Hello, World!"
    xor rcx, rcx                  ; hWnd = NULL (parent window)
    mov r9d, 0                   ; uType = MB_OK
    call MessageBoxA

    ; void ExitProcess(UINT uExitCode)
    xor ecx, ecx                 ; uExitCode = 0 (normal exit)
    call ExitProcess
