//Exa 4.14
clc;
clear;
close;
format('v',7);

//Given Data :
V1=4;//m^3
V2=4;//m^3
m=20;//Kg
p1=4*100;//KPa
p2=8*100;//KPa
Cp=1.005;//KJ/KgK
Cv=0.718;//KJ/KgK
R=Cp-Cv;//KJ/KgK
T1=p1*V1/m/R;//K
T2=p2*V2/m/R;//K
deltaU=m*Cv*(T2-T1);//KJ
disp(deltaU,"Change in internal energy in KJ : ");
W=0;//KJ
disp(W,"Since no movement, Work done in KJ : ");
Q=W+deltaU;//KJ
disp(Q,"Heat transfered in KJ : ");
deltaS=integrate('m*Cv/T','T',T1,T2);//KJ/K
disp(deltaS,"Entropy change  in KJ/K : ");
