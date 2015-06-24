clc
h1=800; //kJ/kg
C1=5; //m/s
h2=2520; //kJ/kg
C2=50; //m/s
dZ=4; //m
g=9.81; //m/s^2
Q=2180; //kJ/kg
W=h1-h2+(C1^2 - C2^2)/2/1000 +dZ*g/1000+Q;
disp("Power developed = ")
disp(W)
disp("kW")