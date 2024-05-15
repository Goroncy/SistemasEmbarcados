;Atividade-2 
;Dos em assembly (MASM/TASM*)
;Subir o código (comentado)
;Explicar o funcionamento dos registradores

.MODEL small ;Definição de modelo de memória
.STACK 64 ;Aloca um espaço de 64 byres para a pilha (Correspondendo ao processador)

.DATA ;Inicio da  seção de dados

message db 'Soldador', '$'; Define uma mensagem e termina com $

.CODE ;Inicio da seção de código

main proc ;Define o inicio do procedimento principal

mov ax, @data ;Carrega o enderço do segmento em AX 
mov ds, ax ;Move o valor em AX para o registrador DS (segmento de dados)

mov ah, 9h ;Preparando o registrador AH para a função 09h do DOS
mov dx, offset message ;Vai fazer o shift(deslocamento) da mensagem em DX

int 21h ;Instrução de interrupeção

main endp ;Marca o fim do procedimento
end main ;Indica o fim