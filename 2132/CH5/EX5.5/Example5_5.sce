//Example 5.5
clc;
clear;
close;
format('v',7);
//Given data :
D1=800/1000;//m^2
D2=600/1000;//m^2
p1=100;//kPa
p2=40;//kPa
v1=4000*10^-3;//m/s
A1=%pi*D1^2/4;//m^2
A2=%pi*D2^2/4;//m^2
Z1=4;//meter
Z2=7;//meter
rho=1;//sp. gravity
g=9.81;//constant
PHeadA=p1/rho/g;//meter of fluid
PHeadB=p2/rho/g;//meter of fluid
v2=A1*v1/A2;//m/s
VHeadA=v1^2/2/g;//meter
VHeadB=v2^2/2/g;//meter
E1=Z1+PHeadA+VHeadA;//meter
E2=Z2+PHeadB+VHeadB;//meter
if E1>E2 then
    disp("Total Energy at A("+string(E1)+" meter) is greater than total energy at B("+string(E2)+" meter). Flow of water is from A to B.");
else
        disp("Total Energy at B("+string(E2)+" meter) is greater than total energy at A("+string(E1)+" meter). Flow of water is from B to A.");
end
