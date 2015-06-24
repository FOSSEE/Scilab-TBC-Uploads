//Example 5.8
clc;
clear;
close;
format('v',8);
//Given data :
D=400/1000;//meter
v1=20;//m/s
Z1=28;//meter
Z2=31;//meter
p1=4/10^-4;//kg/m^2
p2=3/10^-4;//kg/m^2
g=9.81;//constant
w=1000;//kg/m^3
Vhead1=v1^2/2/g;//meter
Phead1=p1/w;//meter
Vhead2=Vhead1;//meter
Phead2=p2/w;//meter
E1=Z1+Vhead1+Phead1;//meter
E2=Z2+Vhead2+Phead2;//meter
HL=E1-E2;//meter
disp(HL,"Loss of head between P & Q in meter : ");
        
