clc
W=-175; //kJ/kg
dh=70; //kJ/kg
Q_water=-92; //kJ/kg
Q=dh+W;
Q_atm=Q-Q_water;
disp("Heat transferred to the atmosphere = ")
disp(-Q_atm)
disp("kJ/kg")