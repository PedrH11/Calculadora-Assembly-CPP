.386 ;especifica a arquitetura
.model flat, C  ;Define modelo de memoria e padrao C 

.code ;Inicio do codigo
MultiASM PROC                ;Inicia o procedimento MULTIASM
    push ebp            ;Salva o valor atual do ponteiro base (EBP) na pilha
    mov ebp, esp        ;Define o ponteiro base (EBP) para o topo da pilha atual

    mov eax, [ebp+8]             ; Carrega o primeiro argumento (multiplicando) no registrador EAX
    imul eax, [ebp+12]        ; Multiplica o valor em EAX pelo segundo argumento (multiplicador) sendo resultado armazenado em eax

    pop ebp                  ;Restaura o valor do ponteiro base original(ebp) da pilha
    ret                     ;retorna o chamador, com o resultado da multiplicação
MultiASM ENDP               ;Fim do procedimento asm
end                         ;fim do codigo
