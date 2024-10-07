
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
# Write your code here!
# Do not remove the prog label or write code above it!
#-----------------------------

    add s0 , zero , zero #arxikopoihsh tou s0=0 
    add t2, zero, zero #t2=0 
loop: 
    beq a1, t2, done #an t2=a1 termatizei to loop
    
    slli t1,t2,2 #t1=t2 * 4 
    add t1,t1,a0 #ypologizw th diefthinsi toy stoixeiou
    
    #fortwsi timis ston t3
    lw t3, 0(t1) #fortosi ths leksis pou h diefthinsi ths einai ston t1

    #elegxos an h timh tou stoixeiou ston t3 einai ish me a2
    bne t3, a2, label_next #an t3!=a2 phgaine sthn etiketa label_next
      
    #an t3=a2 
    add s0,t1,zero #apothikeuoume th diefthinsi tou t1 ston s0

label_next: 
    #auksanoume ton deikti 
    addi t2, t2, 1
    j loop # epistrofh sthn arxi tou loop
done:
    addi a7, zero, 10 
    ecall
