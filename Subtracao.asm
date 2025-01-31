.386 ;especifica a arquitetura
.model flat, C  ;Define modelo de memoria e padrao C
.code ;Inicio do codigo

SubtracaoASM PROC ;Inicia o procedimento subtracaoASM
    push ebp     ;Salva o valor atual do ponteiro base
    mov ebp, esp    ;Define o ponteiro base (EBP) para o topo da pilha atual

    mov eax, [ebp+8] ;Carrega o primeiro argumento (num1, minuendo) no registrado eax
    sub eax, [ebp+12] ;Subtrai o segundo argumento (num2,Subtraendo) no valor do registrador eax

    pop ebp ;Restaura o valor original do ponteiro base (EBP) da pilha    
    ret       ;Retorna o chamador, com o resultado da subtração em EAX

SubtracaoASM ENDP ;Fim do procedimento SubtracaoASM
end ;Fim do codigo
