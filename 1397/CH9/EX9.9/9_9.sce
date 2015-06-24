//clc();
clear;
//To determine energy stored in the condenser
C=4*10^-6;         //capacitance of condenser in F
epsilonr=200;      //relative permeability
V=2000;            //applied voltage in V
C0=C/epsilonr;
disp(C0);
E=(1/2)*C0*(V);
printf("energy stored in Joule is")
disp(E);

//answer in book is wrong
