clear;
clc;

//Caption:Value of theta for Ge Transistor

//Given Data
Vcc=30;//in V
Rc=2;//in K
Re=4.7;//in K
Ic=1.5;//in mA

//We know that dPc/dIc = Vcc - (2*Ic*(Rc+Re))
//Let D=dPc/dIc

D = Vcc - (2*Ic*(Re+Rc));
disp('Ic increases by 0.131mA over a temprature range of 35 to 75 degree C');
disp('theta<(A=(dPc/dIc)*(dIc/dTc))');
A=D*((0.131*(10^-3))/(75-25));

disp('degreeC/W',1/A,'theta<');
disp('The upper bound on theta is so high that transistor would not violate it and therefore circuit will be safe from thermal runaway');

//End