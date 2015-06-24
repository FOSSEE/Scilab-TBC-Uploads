//Example 3.15:High resistance
clc;
clear;
close;
//given data :
V1=500;// in V
V2=300;// in V
t=60;// in sec
C=2.5*10^-6;// in F
R=t*10^-6/(C*log(V1/V2));
disp(R,"Unknown resistance,R(M-ohm) = ")
