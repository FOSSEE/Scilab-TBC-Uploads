clc
//Example 14.5
//Install Symbolic toolbox
//Find the Inverse Laplace transform
syms s
s=%s;
P =(7*s+5)/(s^2+s);
Pp=pfss (P)
p1=ilaplace (Pp(1))
p2=ilaplace (Pp(2))
p=p1+p2
disp(p,'p(t)=');