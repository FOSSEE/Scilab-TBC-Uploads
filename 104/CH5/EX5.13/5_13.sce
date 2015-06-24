//OCF form
A=[1 2 1;0 1 3;1 1 1]
B=[1;0;1]
C=[1 1 0]
D=0
[row,col]=size(A)
c=s*eye(row,col)-A
x=det(c)
r=coeff(x)
M=[r(1,2) r(1,3) 1;r(1,3) 1 0;1 0 0]
V=[C;C*A;C*A^2]
disp(V,"observability matrix=")
if (det(V)==0) then
    printf("system cannot be transformed into ocf form")
else
    printf("system can be transformed into ocf form")
end
Q=inv(M*V)
disp(Q,"Q=")
Aocf=inv(Q)*A*Q
Cocf=C*Q
B=inv(Q)*B
disp(Aocf,"Aocf=")
disp(Cocf,"Cocf=")