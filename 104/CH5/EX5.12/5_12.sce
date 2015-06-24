//OCF form
s=%s
A=[1 2 1;0 1 3;1 1 1]
B=[1;0;1]
[row,col]=size(A)
c=s*eye(row,col)-A
x=det(c)
r=coeff(x)
M=[r(1,2) r(1,3) 1;r(1,3) 1 0;1 0 0]
S=[B A*B A^2*B]
disp(S,"controllability matrix=")
if (det(S)==0) then
    printf("system cannot be transformed into ccf form")
else
    printf("system can be transformed into ccf form")
end
P=S*M
disp(P,"P=")
Accf=inv(P)*A*P
Bccf=inv(P)*B
disp(Accf,"Accf=")
disp(Bccf,"Bccf=")