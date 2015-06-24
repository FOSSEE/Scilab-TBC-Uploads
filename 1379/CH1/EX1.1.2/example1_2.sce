

//exapple 1.2 
clc; funcprot(0);
// Initialization of Variable
G=21.2;//mass flow rate
rho=1120;//density
d=0.075;//diameter
l=50;
g=9.81;
pi=3.14;
delz=24/100;//head difference
//calculation
delP=delz*rho*g;//differece of pressure
u=4*G/pi/d^2/rho;
phi=delP/rho*d/l/u^2/4*50;
disp(phi,"The Stanton-Pannel friction factor per unit of length:");
R=phi*rho*u^2;
disp(R , "shear stress exerted by liquid on the pipe wall in (N/m^2):");
F=pi*d*l*R;
disp(F , "Total shear force exerted on the pipe in (N):");
Re=(.0396/phi)^4;//reynold's no.
mu=rho*u*d/Re;
disp(mu , "viscosity of liquid in (kg/m/s):")

