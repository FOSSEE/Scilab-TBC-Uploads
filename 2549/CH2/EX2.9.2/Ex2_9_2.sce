// Ex2.9.2
//calculation of transition capacitance
clc;
clear;
//given
W=2.38*10^-6; //width of depletion layer for V=-1
W1=4.8*10^-6;//width of depletion layer for V=-5
A=0.8*10^-6;//area of junction
epslnR=16;//for Ge
epslnO=8.854*10^-12;//permittivity of free space
epsln=epslnR*epslnO;//permittivity of semiconductor
Ct=(epsln*A)/W;
disp('pf',Ct*10^12,'transition capacitance Ct for V=-1 is:')
Ct1=(epsln*A)/W1;
disp('pf',Ct1*10^12,'transition capacitance Ct1 for V=-5 is:')
disp('The answer shows that Transition Capacitance Ct decrease with increase in Reverse Voltage')
