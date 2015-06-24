//Example 3.22:Resistance and inductance
clc;
clear;
close;
//given data :
S=2000;// in ohm
P=1000;// in ohm
Q=S;// in ohm
C=1*10^-6;// in F
r=200;// in ohm
R=P*Q/S;
disp(R,"Resistance,R(ohm) = ")
L=(C*P/S)*(r*(Q+S)+(Q*S));
disp(L,"Inductance,L(H) = ")
