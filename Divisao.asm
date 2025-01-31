.386                        ;Especifica a arquitetura
.model flat, C              ;Define modelo de memoria e padrao C

.code ;Inicio do codigo
DivisaoASM PROC             ;Inicia procedimento divisao asm
  push ebp                  ;Salva valor atual no ponteiro base da pilha (ebp) 
    mov ebp, esp            ;Define o ponteiro base para o topo da pilha atual (ebp)

    mov eax, [ebp+8]        ;carrega o dividendo(NUM1) no registrador eax
    mov ebx, [ebp+12]       ;Carrega o divisor(num2) no registrador ebx
    cdq                     ;Estende o sinal de eax para ebx:edx (prepara a divisao)
    idiv ebx                ;Realiza a divisao de edx:eax por ebx (resultado em eax, resto em edx)

    pop ebp                 ;restaura valor original do ponteiro base (ebp) da pilha
    ret                     ;retorna o chamador, com o quociente em eax
DivisaoASM ENDP             ;Fim do procedimento divisaoASM
end                         ;fim do codigo
