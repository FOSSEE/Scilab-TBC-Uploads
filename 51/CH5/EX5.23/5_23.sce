clc;
clear;
dia=120;//mm
p=1.0;//kPa

//using energy equation
//Q=A2*v2=A2*((p1-p2)/(d*(1+Kl)/2)); d =density, Kl= loss coefficient
Kl1=0.05;;
Kl2=0.5;
//for rounded entrance cyliindrical vent
Q1=(%pi*((dia/1000)^2)/4)*(p*1000*2/(1.23*(1+Kl1)))^0.5;
//for cylindrical vent
Q2=(%pi*((dia/1000)^2)/4)*(p*1000*2/(1.23*(1+Kl2)))^0.5;

disp("m^3/sec",Q1,"The volume fowrate associated with the rounded entrance cylindrical vent configuration =")
disp("m^3/sec",Q2,"The volume fowrate associated with the cylindrical vent configuration =")
KLoss=0:0.01:0.5;
count=1;
for i=0:0.01:0.5
    flow(count)=(%pi*((dia/1000)^2)/4)*(p*1000*2/(1.23*(1+i)))^0.5;
    count=count+1;
end
plot2d(KLoss,flow,rect=[0,0,0.5,0.5])
xtitle("Q vs KL","KL","Q, (m^3)/sec")
