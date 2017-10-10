// EMF induced in coils parallel to each other

clc;
clear;

Nx=1000;
Ix=5;
flux1=0.05*(10^-3);
di=12;
dt=10^-2;
K=60/100;

Lx= Nx*flux1/Ix;

// Since two coils are identical, Both will have equal self inductances.

Ly=Lx;

M=K*sqrt(Lx*Ly);

Ey=M*di/dt;

disp('volts',Ey,'The EMF induced by the coil Y =')
disp('H',Lx,'The Self Inductance of Coil X= ')
disp('H',Ly,'The Self Inductance of Coil X= ')
disp('H',M,'The Mutual Inductance of Coils')

