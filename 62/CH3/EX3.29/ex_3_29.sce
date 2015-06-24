clear;
clc;
syms t s1 a
s=%s
H=(s+1)/(s+2);
hp=pfss(H)
h1=ilaplace(hp(1))
disp(h1*'u(t)'+'delta(t)',"h(t)=")