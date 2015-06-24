//Exa 3.18
clc;
clear;
close;
format('v',8);

//Given Data :
//Heat Pump in winter
Q1=2400;//KJ/hr/degree temperature difference
t1=20;//degreeC
t2=0;//degreeC
Q1=Q1*(t1-t2)/3600;//KJ/s
T1=t1+273;//K
T2=t2+273;//K
COP=T1/(T1-T2);
W=Q1/COP;//KW
disp(W,"Power required to drive heat pump in KW : ");
//Refrigerating unit in summer
T4=20+273;//K
//Q4=2400*(T3-T4)/3600;//KJ/s
Q3subQ4=W;//KJ
//COP=Q4/(Q3subQ4)=T4/(T3-T4);
//T3^2-2*T3*T4+T4^2-T4*3600/2400*(Q3subQ4)=0
P=[1 -2*T4 T4^2-T4*3600/2400*(Q3subQ4)]
T3=roots(P);
T3=T3(1);//K(Maximum outside temperature)
disp(T3,"Maximum outside temperature in K : ");
disp(T3-273,"or in degree C :");

