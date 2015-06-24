

//exapple 1.3 
clc; funcprot(0);
// Initialization of Variable
pi=3.14;
g=9.81;
d=0.00125;
Re=2100;
l=0.035;
rhoc=779;//density of cyclohexane
rhow=999;//density of water
muc=1.02/1000;//viscosity of cyclo hexane
//calculation
u=Re*muc/rhoc/d;//speed
Q=pi*d^2*u/4;//volumetric flow rate
delP=32*muc*u*l/d^2;//pressure difference
delz=delP/(rhow-rhoc)/g;
disp(delz*100 , "the difference between the rise levels of manometer in (cm):")

