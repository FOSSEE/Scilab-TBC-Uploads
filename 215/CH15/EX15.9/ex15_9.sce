clc
//Example 15.9
//Install Symbolic toolbox
//Find the inverse Laplace transform
syms s
s=%s
//Let a=1 and b=3
a=1;b=3;
V=1/((s+a)*(s+b))
Vp=pfss (V)
Vp1=ilaplace(Vp(1))
Vp2=ilaplace(Vp(2))
v=Vp1+Vp2
disp(v,'v(t)=')