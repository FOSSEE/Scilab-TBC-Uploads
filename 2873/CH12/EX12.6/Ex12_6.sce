// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 12 Example 6")
D=4*10^-2;//inner diameter in m
L=3;//length in m
V=1;//velocity of water in m/s
T1=40;//mean temperature in degree celcius
T2=75;//pipe wall temperature in degree celcius 
k=0.6;//conductivity of water in W/m
Pr=3;//prandtl no.
v=0.478*10^-6;//viscocity in m^2/s
disp("reynolds number,Re=V*D/v")
Re=V*D/v
disp("subsituting in Nu=0.023*(Re)^0.8*(Pr)^0.4")
disp("or (h*D/k)=0.023*(Re)^0.8*(Pr)^0.4")
disp("so h=(k/D)*0.023*(Re)^0.8*(Pr)^0.4 in W/m^2 K")
h=(k/D)*0.023*(Re)^0.8*(Pr)^0.4 
disp("rate of heat transfer due to convection,Q in W ") 
disp("Q=h*A*(T2-T1)")
Q=h*(%pi*D*L)*(T2-T1)
disp("so heat transfer rate=61259.38 W")
disp("Q in KW")
Q=Q/1000
