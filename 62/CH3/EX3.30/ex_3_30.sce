clear;
clc;
syms t s1 a
s=%s;
H=1/((s+2)*(s-1));
hp=pfss(H)
h1=ilaplace(hp(1))
h2=ilaplace(hp(2))
disp((h1+h2)*'u(t)',"when the system is causal h(t)=")
disp(h1*'u(-t)'+h2*'u(-t)',"when the system is stable h(t)=")
disp((h1+h2)*'u(-t)',"when the system is neither stable nor causal h(t)=")