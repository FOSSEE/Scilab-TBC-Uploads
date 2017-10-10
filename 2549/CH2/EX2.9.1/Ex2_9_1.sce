//Ex2.9.1
//calculation of the width of depletion layer
clc;
clear;
Na=4*10^20;//accepter impurity atom concentration per m3
Vj=0.2;//contact potential
V=-1;//applied reverse voltage
V1=-5;
epslnR=16;//for Ge
epslnO=8.854*10^-12;//permittivity of free space
epsln=epslnR*epslnO;//permittivity of semiconductor
q=1.6*10^-19;//charge
W=sqrt((2*epsln*(Vj-V))/(q*Na))//expression for width of depletion layer
disp('um',W*10^6,'width of depletion layer is when V=-1')
W=sqrt((2*epsln*(Vj-V1))/(q*Na))
disp('um',W*10^6,'width of depletion layer is when V=-5')
