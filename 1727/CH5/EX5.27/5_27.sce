clc
//Initialization of variables
g=981 //cm/s^2
H=20 //cm
err=3/100
//calculations
dH=err/2.5 *H
v0=sqrt(2*g*dH)
//results
printf("Required velocity = %.2f cm/s",v0)
//The answer is a bit different due to rounding off error
