
clc;
N=1455;
Ns=1500; //General case considered in the problem
s1=(Ns-N)/Ns;

//for V1=0.9V
//V1/V=a
a=0.9;
//T=(3VVs)/(Wsr2)
//As torque is constant 
s2=(s1)/(a*a);
Nr=Ns*(1-s2);
//I=s1V/r2
//I22/I21=b
b=(s2*a)/s1;
//Losses Ratio=c
R=b*b;

d=((N-Nr)/N)*100;
e=((R-1)/1)*100;
mprintf('Percentage reduction in speed is %f percent\n',d);
mprintf('Percentage reduction in ohmic losses is %f percent\n',e);
