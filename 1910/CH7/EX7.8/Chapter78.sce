// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 7, Example 8")
//Mercury and a light oil flowing at Uinf=4mm/s in a smooth tube having diameter(D)=25mm at a bulk temprature of 80°C.
Uinf=4*10^-3;//in metre
D=25*10^-3;//in metre
//The pertinent properties of the fluid at that temprature are kinematic viscosity of mercury(nuHg=1*10^-7m^2/s),kinematic viscosity of oil(nuoil=6.5*10^-6m^2/s)
//Prandtl number of mercury(PrHg=0.019),Prandtl number of oil(Proil=85).
nuHg=1*10^-7;
nuoil=6.5*10^-6;
PrHg=0.019;
Proil=85;
//ReHg is Reynolds number for mercury
disp("Reynolds number for mercury is")
ReHg=Uinf*D/nuHg
//Reoil is Reynolds number for oil
disp("Reynolds number for oil is")
Reoil=Uinf*D/nuoil
//The hydrodynamic length are given by L=0.05*Re*D
//LeHg is the hydrodynamic entry length for mercury
disp("The hydrodynamic entry length for mercury in m is")
LeHg=0.05*ReHg*D
//Leoil the hydrodynamic entry length for oil
disp("The hydrodynamic entry length for oil in m is")
Leoil=0.05*Reoil*D
//The thermal entry length are given by L=0.05*Re*Pr*D
//LtHg is the thermal entry length for mercury
disp("The thermal entry length for mercury in m is ")
LtHg=0.05*ReHg*PrHg*D
//Ltoil is the thermal entry length for oil
disp("The thermal entry length for oil in m is")
Ltoil=0.05*Reoil*Proil*D


















