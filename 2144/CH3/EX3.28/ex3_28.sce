// Exa 3.28
clc;
clear;
close;
// Given data
T= 60+273;// in K
T2= 25+273;// in K
P1=3.5*10^6;// in Pa
P2=1.7*10^6;// in Pa
Gamma=0.4;// value of Cp-Cv
m1=1;// (assumed value)
// R= P1*V/(m*T)             (i)
// R= P2*V/((m-m1)*T2) (ii)
// From eq(i) and (ii)
m= m1*P1*T2/(P1*T2-P2*T);
// U= m*Cv*T and U1= (m-m1)*Cv*T2+m1*Cv*T1
// U-U1= P1*V1= m1*R*T1 or
// m1*R*T1= m*Cv*T-[(m-m1)*Cv*T2+m1*Cv*T1]
T1= (m*T-(m-m1)*T2)/(m1*Gamma+m1);// in K
disp(T1-273,"The temperature of gas in the cylinder in °C is : ")
