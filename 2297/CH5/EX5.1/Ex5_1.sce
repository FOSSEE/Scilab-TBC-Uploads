// Example 5.1 : resistance
clc;
clear;
// given :
format('v',9)
n=50;//number of turns
B=1;//magnetic field in tesla
I=1;//current in amperes
L=4;//length in cm
d=3;//dia in cm
Td=n*B*I*L*d*10^-4;//torque in N-m
cd1=2.4*10^-4;//controlling torque
id=cd1/Td;//current in amperes
fsv=100;//full scale voltage
trv=fsv/id;//ohms
adr=10000;//ohms
r=trv-adr;//ohms
disp(r,"required resistance is,(ohm)=")
