clc
// X(0.88/12 C + 0.12/2 H2) + Y O2 + 79/21*Y N2 → 0.12CO2 + a O2 + (0.88 – a) N2 + b H2O

X=0.12/(0.88/12);
b=0.06*X;
a=0.0513;
Y=0.2203;
Air_supplied=0.2203*32/0.233;

AF=Air_supplied/X;
disp("A/F ratio =")
disp(AF)