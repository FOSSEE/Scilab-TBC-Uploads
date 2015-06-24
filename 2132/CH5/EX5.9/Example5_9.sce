//Example 5.9
clc;
clear;
close;
format('v',8);
//Given data :
Z1=0;//meter
Z2=4;//meter
rho=0.8;//sp. gravity

Q=250*10^-3;//m/s or cumec
D1=250/1000;//meter
D2=500/1000;//meter
A1=%pi*D1^2/4;//m^2
A2=%pi*D2^2/4;//m^2
v1=Q/A1;//m/s
v2=Q/A2;//m/s
p1=0.1*10^3;//N/m^2
p2=0.06*10^3;//N/m^2
g=9.81;//constant
Vhead1=v1^2/2/g;//meter
Phead1=p1/rho/g;//meter
Vhead2=v2^2/2/g;//meter
Phead2=p2/rho/g;//meter
H1=Z1+Vhead1+Phead1;//meter
H2=Z2+Vhead2+Phead2;//meter
if H1>H2 then
    disp("Total head at A("+string(H1)+" meter) is greater than total head at B("+string(H2)+" meter). Flow will take place from A-B.");
    HeadLoss=H1-H2;//meter
    disp(HeadLoss,"Head Loss in meter : ");
else
    disp("Total head at B("+string(H2)+" meter) is greater than total head at A("+string(H1)+" meter). Flow will take place from B-A.");
    HeadLoss=H2-H1;//meter
    disp(HeadLoss,"Head Loss in meter : ");end
        
