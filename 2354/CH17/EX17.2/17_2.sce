//example 17.2
clc; funcprot(0);
// Initialization of Variable
U=10;//m/s
L=0.5;
nu=30.84e-6;
Pr=0.687;//prandtl number
Re=U*L/nu;
disp(Re,"reynolds number");
Nul=0.664*Re^0.5*Pr^0.33;
h=Nul*0.0364/L;
q=h*L*(300-27);
disp(q,"colling rate in W/m");
//if there is turbulence
Nul=0.037*Re^0.8*Pr^0.33;
h1=Nul*0.0364/L;
q1=h1*L*(300-27);
disp(q1,"colling rate in W/m in turbulence");
clear()
