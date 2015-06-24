//Exa 4.11
clc;
clear;
close;
format('v',7);

//Given Data :
m1=2;//Kg
T1=80+273;//K
m2=3;//Kg
T2=30+273;//K
Cp=4.187;//KJ/KgK
//m1*Cp1*(T1-T)=m2*Cp2*(T-T2)
T=(m1*Cp*T1+T2*m2*Cp)/(m2*Cp+m1*Cp);//K
deltaS=integrate('m1*Cp/T','T',T1,T)+integrate('m2*Cp/T','T',T2,T);//KJ/K
disp(deltaS,"Total Entropy change due to mixing process in KJ/K : ");
