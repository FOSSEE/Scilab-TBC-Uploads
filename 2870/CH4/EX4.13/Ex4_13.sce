clc;clear;
//Example 4.13

//given data
maf=0.15;
caf=3.8;
dTaf=1.8;//suffix af for affected tissue
mh=1.2;///suffix h for hand

//calculations
//Ein - Eout = Esystem
//dUaffected tissue - KEhand = 0
//from above equation we can deduce that
Vhand= sqrt(2*maf*caf*dTaf*1000/mh);//for conversion factor mutiplying by 1000 to get m^2/s^2
disp(Vhand,'the velocity of the hand just before impact in m/s');
