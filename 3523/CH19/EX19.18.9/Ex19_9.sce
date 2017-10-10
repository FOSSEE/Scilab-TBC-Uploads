clear all
clc
close

V = 120*10^3;//voltage b/w collecting parallel plates in V
d=0.6;//in meters
y1=1.2;//vertical dimension of the plates in m
cm = 10*10^-6;//charge to mass ratio in C/kg
g =-9.8;//gravitational force
//intergrating -9.8t with initial conditions we obtain y = -4.9t^2
y = 4.9;//at t=y0
t0 = sqrt(y1/y);
printf("phosphate particle exit plate at %f sec",t0)
EF = (cm*V)/d;//velosity of particle in x direction is governed by electrostatic force
printf("electrostatic force %f m/s^2",EF)
//integrating twice and subsituting initial conditions we have x = t^2; t=t0
x=(t0)^2;
printf("particle exits the plate at %f m",x)


