clc;
k=9*10^9;     //constant in free space in N.m square/C square
q1=4*10^-9;   //charge in coulomb
q2=5*10^-8;   //charge in coulomb
r=5*10^-2;    //radius in metre
F=(k*q1*q2)/(r*r);    //calculating force in Newton
disp(F,"Force in Newton = ");     //displaying result