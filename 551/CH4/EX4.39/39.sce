clc
g=9.8; //m/s^2
m=4500/3600; //kg/s
C1=2800/60; //m/s
Z1=5.5; //m
h1=2800; //kJ/g
C2=5600/60; //m/s
Z2=1.5; //m
h2=2300; //kJ/kg
Q=-16000/3600; //kJ/s
W=Q-m*[(h1-h2) + (C2^2 - C1^2)/2/1000 + (Z2-Z1)*g/1000];
disp("Power output of the turbine = ")
disp(-W)
disp("kW")