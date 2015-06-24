//Caption:Calculate (i)-cyclotron angular frequency, (ii)-cut-off voltage, (iii)-cut-off magnetic flux
//Exa:8.14
clc;
clear;
close;
e_m_ratio=1.759*10^11;//(e/m)
a=0.04;
b=0.08;
V_o=30*10^3;//in volts
I_o=80;//in A
B_o=0.01;//in weber/sq.m
w=(e_m_ratio)*B_o;
disp(w,'Cyclotron angular frequency( in rad/s) =');
V_c={(e_m_ratio)*B_o^2*b^2*[1-(a/b)^2]^2}/8;
disp(V_c,'Cut-off voltage (in volts) =');
B_c=sqrt(8*V_o/e_m_ratio)/[[1-(a/b)^2]*(b)];//in weber/m^2
disp(B_c*10^3,'Cut-off magnetic flux density (in milli weber/sq. m) =');