//No of poles p, No of slots 'slots', Number of coil sides per slot cps
//Number of turns in each coil nc
close();
clear;
clc;
p = 4;
a = p;
n = 720;
phi = 0.020;
slots = 144;
cps = 2;
nc = 2;
z = slots*cps*nc;
E = phi*n*z/60*(p/a);
mprintf('Inductor Voltage E = %0.2f V',E);