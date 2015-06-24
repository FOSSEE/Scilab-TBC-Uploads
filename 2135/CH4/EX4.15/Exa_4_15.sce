//Exa 4.15
clc;
clear;
close;
format('v',9);

//Given Data :
V1=4;//m^3
V2=4;//m^3
m=600/1000;//Kg
C=150;//J/K
T1=100+273;//K
T0=8+273;//K
Cp=C/1000;//KJ/K
deltaSblock=integrate('Cp/T','T',T1,T0);//KJ/K
Q=Cp*(T1-T0);//KJ
deltaSlake=Q/T0;//KJ/K
deltaSuniverse=deltaSblock+deltaSlake;//KJ/K
disp(deltaSuniverse,"Part (i) Entropy change of universe in KJ/K : ");
T1=8+273;//K
Z=100;//meter
g=9.81;//gravity constant
PE=m*g*Z/1000;//KJ
deltaT=PE/Cp;//degree centigrade
T2=T1+deltaT;//K
deltaSblock=-integrate('Cp/T','T',T1,T2);//KJ/K
deltaSlake=PE/T0;//KJ/K
deltaSuniverse=deltaSblock+deltaSlake;//KJ/K
disp(deltaSuniverse,"Part (ii) Entropy change of universe in KJ/K : ");
