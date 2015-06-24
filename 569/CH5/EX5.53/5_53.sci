// Calculate the internal resistance of cell and open circuit voltage
clc;
I=2.2*10^-3;
Eo=0.33;
Rl=100;
Ri=(Eo/I)-100;
disp(Ri,'internal resistance of cell (ohm)')
Vo=0.33*[log(25)/log(10)];
disp(Vo,'open circuit voltage for a radiant incidence of 25 W/m2 (V)=')