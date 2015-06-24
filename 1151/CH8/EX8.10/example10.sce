A =[-1 0 0;0 -2 0;0 0 -3]
B =[1;1;0]
x=[0 1 2]
p=cont_mat(A,B)
disp (p," controllability matrix=");
d=det(p)
if d==0 
printf ("matrix is singular, so the system is uncontrollable");
else
printf ("system is controllable ");
end
s=%s
[r c]= size (A)
h=s*eye(r,c)-A // s*I-A
q=inv(h)
c=x*q*B;
disp(c,"required transfer function =")



