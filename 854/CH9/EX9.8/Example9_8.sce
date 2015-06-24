//clear//
//Caption: Program to find total Magnetic Flux Density in Weber
//Example9.8
//page 289
clc;
I = 4; //current through toroid in Amps
r = 1e-03; //air gap radius in metre
Hphi = I/(2*%pi*r);
u0 = 4*%pi*1e-07 ;//free space permeability in H/m
ur = 1;//relative permeability
u = u0*ur;
N = 500;//number of turns
S = 6e-04; //cross section area in square metre
Rair = 2.65e06; //reluctance in air A.t/Wb
Rsteel = 0.314e06; //reluctance in steel A.t/Wb
R = Rair+Rsteel;//total reluctance in A.t/Wb
Vm = I*500; //total mmf in A.t
phi = Vm/R;//total flux in webers
B = phi/S; //flux density in Wb/Square metre
disp(B,'Magentic Flux Density in tesla B =')
//Result
//Magentic Flux Density in tesla B = 1.1246064 
