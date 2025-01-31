.386 ;especifica a arquitetura
.model flat, C ;Define modelo de memoria e padrao C

.code ;Inicio do codigo
SomaASM PROC ;Inicia o procedimento SOMAASM
    push ebp  ;Salva o valor atual do ponteiro base(ebp) na pilha
    mov ebp, esp   ;define o primeiro ponteiro base (ebp) para o topo da pilha atual

    mov eax, [ebp+8] ;carrega o primeiro argumento (Num1) no registrador eax
    add eax, [ebp+12] ;soma o segundo argumento (Num2) ao valor do registrador eax

    pop ebp   ;restaura o valor original do ponteiro base (ebp) da pilha
    ret        ;Retorna o chamador, com o resultado eax
SomaASM ENDP ;fim do procedimento somaasm
end ;fim do codigo
