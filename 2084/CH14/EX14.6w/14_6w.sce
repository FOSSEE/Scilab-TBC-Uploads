//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.6w
//calculation of the longitudinal strain in two wires

//given data
m1=1//mass(in kg) of load 1
m2=2//mass(in kg) of load 2
A=.005*10^-4//area(in m^2) of the cross section
Y=2*10^11///Young modulus(in N/m^2) of the wire
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
T1=m1*g//tension in wire 1
Ss1=T1/A//longitudinal stress
St1=Ss1/Y//longitudinal strain
T2=(m2*g)+T1//tension in wire 2
Ss2=T2/A//longitudinal stress
St2=Ss2/Y//longitudinal strain

printf('the longitudinal strain in wire 1 is %3.1e',St1)
printf('\nthe longitudinal strain in wire 2 is %3.1e',St2)
