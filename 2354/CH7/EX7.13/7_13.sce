//example 7.13
clc; funcprot(0);
// Initialization of Variable
T1=293;//kelvin
p2=5;//atm
p1=1;//atm
n=1.3;
h2=426.35;
h1=293.17;
T2=T1*(p2/p1)^((n-1)/n);
k=-n*8.314/28.97*(T2-T1)/(n-1);//Wcvdot/mdot
disp(k,"Wcvdot/mdot in kJ/kg");
k1=k+h2-h1;
disp(k1,"Qcvdot/mdot in kJ/kg");
clear()
