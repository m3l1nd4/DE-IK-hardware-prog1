# A continue utasítás a ciklusokban

    .intel_syntax noprefix
    .globl  main,a,i
    .data
i:  .4byte  15
a:  .4byte  5

main:
        jmp     cond
body:
        mov     eax, DWORD PTR[i]
        dec     eax     
        mov     DWORD PTR[i], eax

        mov     eax, DWORD PTR[i]
        cmp     eax, 6
        je      cond

        mov     edx, DWORD PTR[a]
        mov     eax, DWORD PTR[i]
        add     eax, edx
        mov     DWORD PTR[a], eax

cond:   
        mov     eax, DWORD PTR[a]
        cmp     eax, 100
        jl      body

        mov     eax, DWORD PTR[i]
        ret


### C style ###
# int i=15;
# int a=5;
# int main(){
#   while(a<100){
#     i--;
#     if(i==6) continue;
#     a+=i;
#     }
#   return a;  
#   }