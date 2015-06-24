//Example 3.13: Insolution resistance
clc;
clear;
close;
//given data :
V1=125;// in V
V2=100;// in V
t=25;// in sec
C=600*10^-12;// in F
R=t*10^-6/(C*log(V1/V2));
disp(round(R),"Insolution resistance,R(M-ohm) = ")
