
//To Find the Magnetic Field on Axis of Solenoid

//Example 36.1

clear;

clc;

i=10;//Current carried by Solenoid in Amperes

r=1*10^-2;//Radius of Solenoid in metres

A=%pi*r^2;//Area of Cross Section of Solenoid in metre^2

u=i*A;//Dipole Moment of each turn

l=10*10^-2;//Length of Solenoid in metres

R=10*10^-2;//Distance of point P from the centre of solenoid

n=200;//Number of turns in Solenoid

d=l/n;//Seperation between two consecutive turns

m=u/d;//Pole Strength for each Current Loop

k=1*10^-7;//Constant (u0/(4*pi))

Rn=R-(l/2);//Distance of point P from North Pole

Bn=k*m/Rn^2;//Magnetic Field at P due to North Pole

Rs=R+(l/2);//Distance of point P from South Pole

Bs=k*m/(Rs)^2;//Magnetic Field at P due to South Pole

B=Bn-Bs;//Resultant Magnetic Field at point P

printf("Magnetic field at a point on the axis of Solenoid at a distance of 10cm from centre = %.1f*10^-4 T away from the solenoid",B*10^4);
