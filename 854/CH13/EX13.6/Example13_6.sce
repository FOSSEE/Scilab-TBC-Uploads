//clear//
//Caption:Program to find the phasor expression for the electric field
//Example13.6
//page456
clc;
ax = sym('ax');
ay = sym('ay');
az = sym('az');
x = sym('x');
y = sym('y');
z = sym('z');
teta = 30;  //phase angle in degrees
teta = 30/57.3; //phase angle in radians
Eo = 10; //Electric field in v/m
f = 50e06; //frequency in Hz
er = 9.0; //relative permittivity
ur = 1; //relative permeability
[uo,eo] = muo_epsilon();
k = propagation_constant(f,uo,ur,eo,er);
K = k*(cos(teta)*ax+sin(teta)*ay);
r = x*ax+y*ay;
Es = Eo*exp(-sqrt(-1)*K*r)*az;
disp(K,'propagation constant per metre K=')
disp(r,'distance in metre r=')
disp(Es,'Phasor expression for the electric field of the uniform plane wave Es=')
//Result
//K=5607*(14969*ay/29940+25156*ax/29047)/1784   
// r=  ay*y+ax*x   
//Es=10*az*%e^-(5607*%i*(14969*ay/29940+25156*ax/29047)*(ay*y+ax*x)/1784) 
