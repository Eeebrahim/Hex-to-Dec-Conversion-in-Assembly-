.MODEL SMALL
.STACK 100H
.DATA
MSG DB "ANSWER IS : $"
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    MOV DX,OFFSET MSG
    INT 21H
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    SUB BL,11H
    
    MOV AH,2
    
    MOV DL,31H
    INT 21H
    MOV DL,BL
    INT 21H 
    
    MOV AH,4CH
    MAIN ENDP
END MAIN
    