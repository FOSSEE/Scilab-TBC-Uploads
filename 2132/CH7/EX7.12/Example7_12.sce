////Example 7.12
clc;
clear;
close;
format('v',6);
//Given data :
g=9.81;//gravity constanty
D1=100/1000;//meter
D2=300/1000;//meter
Q1=0.01;//m^3/sec
A1=%pi/4*D1^2;//m^2
A2=%pi/4*D2^2;//m^2
//hf1=hf2
Q2=sqrt(D2/(D1)*(Q1/A1)^2*A2^2);//cumec
disp(Q2,"Discharge throough 300mm pipe in cumec : ");
