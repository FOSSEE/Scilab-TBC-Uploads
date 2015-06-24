

//exapple 13.4 
clc; funcprot(0);
// Initialization of Variable
rhos=1455;//density of crystals
rho=998;//density of wliquid
g=9.81;
pi=3.1428;
mu=1.013/1000;
omega=2*pi*60000/60;
l=0.5;
d=2*10^-6;//dia of particles
r=50.5/1000;//radius
t=38.5/1000;//thickness of liquid
//calculation
ri=r-t;
V=pi*l*(r^2-ri^2);
Q=d^2*(rhos-rho)/18/mu*omega^2*V/log(r/ri);
disp(Q,"the maximum volumetric flow rate in (m^3/s):")
