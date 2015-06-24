

//exapple 13.3 
clc; funcprot(0);
// Initialization of Variable
rhos=1425;//density of organic pigment
rho=998;//density of water
pi=3.1428;
omega=360*2*pi/60;
mu=1.25/1000;
t=360;
r=0.165+0.01;
ro=0.165;
//calculation
d=sqrt(18*mu*log(r/ro)/t/(rhos-rho)/omega^2);
printf('the minimum diameter in organic pigment in m: %3.1e\n', d);
