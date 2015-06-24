clear;
clc;
syms n s t R C V v0;
I=(V-v0)/(s*(R+1/(C*s)));
i=ilaplace(I);
disp(i*'u(t)',"i(t)=")
Vc=(V/(R*C*s)+v0)/(s+1/(R*C));
vc=ilaplace(Vc)
disp(vc,"vc(t)=")