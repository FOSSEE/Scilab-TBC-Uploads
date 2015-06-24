
//Exa:4.5
clc;
clear;
close;
//Given:
Vcc=12.5;//in volts
Po=2.5;//in watts
Rl=50;
f=27.5*10^6;//in hz
Ri=Vcc^2/2/Po;
n=Rl/Ri;
printf("\n 1)equivalent ressitance = %fohm ",Ri);
Xl=Ri*sqrt(n-1);
l=Xl/(2*%pi*f);
printf("\n 2)indutance = %f microhenry",l*10^6);
Xc=Ri*n/sqrt(n-1);
c=1/{Xc*(2*%pi*f)};
printf("\n 3)capacitance = %f pF",c*10^12);