clc
//Example 14.6
//Install Symbolic toolbox
//Find the Inverse Laplace transform
syms s
s=%s;
V =2/(s^3+12*s^2+36*s);
Vp=pfss (V)
v1=ilaplace (Vp(1))
v2=ilaplace (Vp(2))
v=v1+v2
disp(v,'v(t)=');