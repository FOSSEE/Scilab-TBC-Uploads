clc
//Example 14.9
//Install Symbolic toolbox
//Find the voltage v(t)
syms s
s=%s
//From figure 14.6
//Writing the KCL equation and taking the Laplace transform
V=4/(s*(s+4))+9/(s+4)
V1=4/(s*(s+4))
V2=9/(s+4)
V1p=pfss(V1)
v1=ilaplace(V1p(1))
v2=ilaplace(V1p(2)+V2)
v=v1+v2
disp(v,'v(t)=')