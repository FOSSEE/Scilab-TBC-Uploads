//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 11.4w
//calculation of the separation between the particles under mutual attraction

//given data
mA=1//mass(in kg) of particle A
mB=2//mass(in kg) of particle B
R=1//initial distance(in m) between the two particles
vB=3.6*10^-2/(60*60)//speed(in m/s) of the particle B
G=6.67*10^-11//universal constant of gravitation(in N-m^2/kg^2)

//calculation
v=(mB*vB)/mA//principle of conservation of linear momentum
U1=-G*mA*mB/R//initial potential energy of the pair
d=U1/(U1-(mB*vB*vB/2)-(mA*v*v/2))//principle of conservation of energy

printf('the speed of particle A is %3.1e m/s',v)
printf('\nthe separation between the particles under mutual attraction is %3.2f m',d)
