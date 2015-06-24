clc
d=0.5; //m
h=0.75; //m
m=4; //kg
Manometer_reading=620; //mm of Hg above atmosphere
Barometer_reading=760; //mm of Hg
V=%pi/4*d^2*h; //m^3
disp("(i) Total pressure in the vessel")

P=(Barometer_reading+Manometer_reading)*133.4/10^5; //bar
disp("P=")
disp(P)
disp("bar")
disp("(ii) Specific volume and density")
SV=V/m; 
disp("Specific volume=")
disp(SV)
disp("m^3/kg")
D=m/V;
disp("Density=")
disp(D)
disp("kg/m^3")