//system with identical eigen values
A=[1 0;0 1]   //lamda1=1
B=[2;3]       //b11=2 b21=3
S=[B A*B]
if det(S)==0 then
    printf("system is uncontrollable")
else 
    printf("system is contollable")
    end