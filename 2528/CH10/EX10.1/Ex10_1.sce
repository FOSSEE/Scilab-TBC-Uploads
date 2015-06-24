//chapter 10
//Vout and lower frequency
//page no.  354
//Example10_1
//Figure 10.7
//Given
clc;
clear;
t=0;
Ri=10000;           //in Ohm
C=10^-8;           //in farad
Rf=100000;           //in Ohm
//Vout(t)=-1/(Ri*C)*int(Vi(t))dt
Flow=1/(2*%pi*Rf*C);
printf("\n Flow is %.0f Hz",Flow);
