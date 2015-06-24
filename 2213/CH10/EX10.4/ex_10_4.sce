//Example 10.4: Energy returned to the line
clc;
clear;
close;
//given data :
W=2340;//in tonne
We=1.1*W;// in tonne
G=100/80;// gradient in %
eta=70/100;// efficiency
V1=60;// in km
V2=36;// in km
r=5*9.81;//N/tonne
t=5*60;// in sec
Ea=(0.01072*We*(V1^2-V2^2))*10^-3;// in kWh
Ft=(W*r)-(98.1*W*G);//tractive effort in N
D=((V1+V2)/2)*(1000/3600)*t;// distance moved in m
M=(-Ft*D)/(1000*3600);
Et=Ea+M;
El=eta*Et;
disp(El,"Energy returned to the line,El(kWh) = ")
