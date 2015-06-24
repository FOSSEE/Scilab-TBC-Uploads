clc
p1=6.87; //bar
C1=50; //m/s
p2=1.37; //bar
C2=500; //m/s
disp("From steam table corresponding to p1")
h1=2850; //kJ/kg
h2=h1 - (C2^2-C1^2)/2/1000;
disp("Final enthalpy of steam = ")
disp(h2)
disp("kJ")