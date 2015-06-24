//controllability
A=[-2 1;0 -1]
B=[1;0]
S=[B A*B]
if det(S)==0 then
    printf("system is uncontrollable")
else 
    printf("system is contollable")
    end