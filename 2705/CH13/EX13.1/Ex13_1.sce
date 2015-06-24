clear;
clc;
disp('Example 13.1');

//  aim : To determine 
//  the power developed for a steam flow of 1 kg/s at the blades and the kinetic energy of the steam finally leaving the wheel

//  Given values
alfa = 20;//  blade angle, [degree]
Cai = 375;// steam exit velocity in the nozzle,[m/s]
U = 165;// blade speed, [m/s]
loss = .15;//  loss of velocity due to friction

//  solution
//  using Fig13.12,
Cvw = 320;// change in velocity of whirl, [m/s]
cae = 132.5;// absolute velocity at exit, [m/s]
Pds = U*Cvw*10^-3;// Power developed for steam flow of 1 kg/s, [kW]
Kes = cae^2/2*10^-3;// Kinetic energy change of steam, [kW/kg] 

mprintf('\n The power developed for a steam flow of 1 kg/s is  =  %f kW\n',Pds)
mprintf('\n The energy of steam finally leaving the wheel is  =  %f  kW/kg\n',Kes);

//  End
