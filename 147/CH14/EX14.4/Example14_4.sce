//Speed n, Flux per pole phi, Total number of conductors z
close();
clear;
clc;
p = 4;
n = 1800;//rpm
z = 728;
phi = 30*10^(-3);//Wb
//Since armature is lap wound p=a
a = p;
E = phi*n*z/60*p/a;
mprintf('Voltage induced in armature winding, E = %0.1f V',E);