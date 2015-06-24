clc;
V1=0.01; // Initial Volume of Freon 12 vapour in cylinder in m^3
T1=15; // Initial Temperature of Freon 12 vapour in degree celcius
p1=4.914; // Initial pressure (Psat at T1) in bar
p2=9; // Final pressure of Freon 12 vapour after compression in bar
T2=65; // Final temperature of Freon 12 vapour after compression in degree celcius
Q=-0.5; // Heat lost to surroundings during compresson process in kJ
v1=0.035413; // Initial specific volume of Freon 12 vapour from table in m^3/kg
m=V1/v1; // Mass of vapour
hg1=193.644; // specific enthalpy of Freon 12 vopour at state 1 in kJ/kg
u1=hg1-(p1*10^2*v1); // Total Specific internal energy at state 1
h2=222.9; // specific enthalpy of Freon 12 vapour at state 2 in kJ/kg
v2=0.022537; // specific volume of Freon 12 vapour at state 2 in m^3/kg
u2=h2-(p2*10^2*v2); // Total Specific internal energy at state 2
W=-m*(u2-u1)+Q; // From first law of thermodynamics
disp ("kJ",W,"Work of compression = ");
