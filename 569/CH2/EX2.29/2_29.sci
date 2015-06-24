//calculating the maximum available power
clc;

Eo=80*10^-3;
Il=5*10^-9;
Rl=6*10^6;
Ro=(Eo/Il)-Rl;
Pmax=(Eo^2)/(4*Ro);

disp(Pmax,'Maximum available Power(W)=')