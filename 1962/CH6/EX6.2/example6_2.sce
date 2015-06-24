
//example 6.2
//page 233
clc; funcprot(0);
//initialisation of variable
rhom=998.2;//density
rhop=858.45;//density
mum=1.005*10^-3;//viscosity
mup=8/1000;//viscosity
Vp=2.5*10;//velocity
Vm=Vp*rhop*mum/mup/rhom;
disp(Vm,"velocity of model (m/s):");
clear
