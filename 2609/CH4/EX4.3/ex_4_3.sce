////Ex 4.3
clc;
clear;
close;
format('v',9);
AOL=%inf;//unitless
Rio=%inf;//ohm
Ri=1;//kohm
Rf=15;//kohm
SF=%inf;//unitless;//as SF=1+AOL*Beta
Beta=Ri/(Ri+Rf);//unitless
ACL=1/Beta;//unitless
disp(Rio,"Input impedence(ohm) for ideal opamp is ");
disp(ACL,"Gain of the circuit, ACL");
