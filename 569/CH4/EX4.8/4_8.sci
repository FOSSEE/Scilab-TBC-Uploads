//Calculate time constant
clc;
S=3.5;
Ac=(%pi/4)*(0.25)^2;
alpha=0.18*10^-3;
Vb=S*Ac/alpha;
disp(Vb,'volume of bulb(mm2)')

Rb=[(Vb/%pi)*(3/4)]^(1/3);
Ab=4*%pi*Rb^2;
D=13.56*10^3;
s=139;
H=12;
tc=(D*s*Vb*10^-9)/(H*Ab*10^-6);
disp(tc,'time constant (s)')