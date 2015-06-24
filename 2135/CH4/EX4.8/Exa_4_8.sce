//Exa 4.8
clc;
clear;
close;
format('v',7);

//Given Data :
m1=5;//Kg
T1=200+273;//K
Cp1=0.4;//KJ/KgK
m2=100;//Kg
T2=30+273;//K
Cp2=2.1;//KJ/KgK
//m1*Cp1*(T1-T)=m2*Cp2*(T-T2)
T=(m1*Cp1*T1+T2*m2*Cp2)/(m2*Cp2+m1*Cp1);//K
deltaS1=integrate('m1*Cp1/T','T',T1,T);//KJ/K
deltaS2=integrate('m2*Cp2/T','T',T2,T);//KJ/K
deltaSsurr=0;//No heat transfer neglected
deltaSuniverse=deltaS1+deltaS2+deltaSsurr;//KJ/K
disp(deltaSuniverse,"Increase in Entropy of universe in KJ/K : ");
