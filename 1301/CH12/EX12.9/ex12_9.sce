clc;
k=9*10^9;     //constant in free space in N.m square/C square
q1=1.6*10^-19;   //charge in coulomb
q2=1.6*10^-19;   //charge in coulomb
r=5.3*10^-11;    //radius in metre
F=(k*q1*q2)/(r*r);    //calculating force in Newton
disp(F,"Force in Newton = ");     //displaying result