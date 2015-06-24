clc
m=15; //kg/s
v=0.45; //m^3/kg
P=12000; //kW
W=P/m; //kJ/kg
h1=1260; //kJ/kg
h2=400; //kJ/kg
C1=50; //m/s
C2=110; //m/s

disp("(i) Heat rejected = ")
Q=h2-h1+(C2^2-C1^2)/2/10^3 +W;
Qnet=m*Q;
disp("Qnet=")
disp(-Qnet)
disp("kW")

disp("(ii) Inlet area")
A=v*m/C1;
disp("A=")
disp(A)
disp("m^2")