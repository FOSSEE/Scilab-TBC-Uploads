//Example 10.3: Electrical energy and average power
clc;
clear;
close;
//given data :
format('v',6)
W=400;//in tonne
We=1.1*W;// in tonne
S=2;// distance in km
G=2;// gradient in %
eta=75/100;// efficiency
D=2;// distance in km
V1=40;// in km
V2=20;// in km
r=40;//N/tonne
Ea=(0.01072*We*(V1^2-V2^2))*10^-3;// in kWh
Ft=(W*r)-(98.1*W*G);
M=(-Ft*S*1000)/(1000*3600);
Et=Ea+M;// total energy available
Ee=eta*Et;
disp(Ee,"Electrical energy,Ee(kWh) = ")
As=(V1+V2)/2;// average speed
At=D/As;// Average time taken
P=round(Ee/At);
disp(P,"Average power,P(kW) = ")
