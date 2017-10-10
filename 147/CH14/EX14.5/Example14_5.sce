close();
clear;
clc;
//from example 14.4
//number of conductors 'n'
z = 728;
//rotating speed of armature 'N'
N = 1800; //rpm
//flux per pole 'phi'
phi = 30*10^(-3); //Wb
//number of poles 'p'
p = 4;
//for wave wound armature
a = 2;
//voltage induced in armature 'E'
E = phi*N*z*p/(60*a); //V
mprintf("Voltage induced in the armature, E = %0.1f V",E);