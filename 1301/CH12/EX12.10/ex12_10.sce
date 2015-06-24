clc;
q1=5*10^-7;          //charge in coulomb
q2=2*10^-7;          //charge in coulomb
k=9*10^9;            //constant in N.m square/coulomb square
F=10^2;              //force in Newton
r=sqrt((k*q1*q2)/F);   //calculating r using Coulomb's law
disp(r*10^3,"Distance between them in mm = ");     //displaying result
