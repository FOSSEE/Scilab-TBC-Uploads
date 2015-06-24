//observability
A=[-2 0;0 -1]
B=[3;1]
C=[1 0]
V=[C;C*A]
if det(V)==0 then
    printf("system is unobservable")
else 
    printf("system is observable")
    end