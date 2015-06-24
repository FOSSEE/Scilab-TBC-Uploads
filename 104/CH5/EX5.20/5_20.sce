//controllability
A=[1 2 -1;0 1 0;1 -4 3]
B=[0;0;1]
S=[B A*B A^2*B]
if det(S)==0 then
    printf("system is uncontrollable")
else 
    printf("system is contollable")
    end