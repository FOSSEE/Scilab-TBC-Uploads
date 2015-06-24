clc;
clear;
h=10;//Km
//air is in a standard atmosphere
p1=26.5;//kPa
T1=-49.9;//degree celcius
d=0.414;//Kg/m^3
k=1.4;
Ma1=0.82;//Mach
//for incompressible flow,
pdiff=(k*Ma1^2)/2*p1;
//for compressible isentropic flow, 
pdiff1=((1+((k-1)/2)*(Ma1^2))^(k/(k-1))-1)*p1;
disp("Stagnation pressure on leading edge on the wing of the Boeing:")
disp("kPa",pdiff,"flow is imcompressible =")
disp("kPa",pdiff1,"flow is compressible and isentropic =")