//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex10_9.sce

clc;
clear;
P_in_HP=10;
eta=0.9;
pf=0.8;
Vl=400;
Vsc=160;
Isc=7.2;
P_in_watt=P_in_HP*735.5;
If=P_in_watt/(sqrt(3)*Vl*pf*eta);
Isc_400=Isc*Vl/Vsc;
Ist=Isc_400/3;
Ist_by_If=Ist/If;
printf("\n The ratio value of starting current to full load current=%1.3f",Ist_by_If)
