//Speed n, Flux per pole phi, Total number of conductors z
//Maximum line current Ia
close();
clear;
clc;
p = 4;
n = 1800;//rpm
z = 728;
Ia = 100;//A
phi = 30*10^(-3);//Wb
//Since armature is lap wound p=a
a = p;
E = phi*n*z/60*p/a;
P = E*Ia;
mprintf('Maximum Power developed by the armature P = %0.1f kW',P/1000);