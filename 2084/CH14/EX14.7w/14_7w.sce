//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.7w
//calculation of the longitudinal strain developed in each wire

//given data
m=3//mass(in kg) of each block
A=.005*10^-4//area(in m^2) of the cross section
Y=2*10^11///Young modulus(in N/m^2) of the wire
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
//using equation of motion,
//TA = m*a..............(1)
//TB - TA = m*a.........(2)
//m*g - TB = m*a........(3)
//adding equation (2) and equation (3) and substituting TA from equation (1),we get
a=(m*g)/(3*m)//acceleration 
TA=m*a//Tension(in N) in wire A
TB=(m*a)+TA//Tension(in N) in wire B..from equation (2)
StA=(TA)/(A*Y)//longitudinal strain in wire A
StB=(TB)/(A*Y)//longitudinal strain in wire B

printf('the longitudinal strain developed in wire A is %3.1e',StA)
printf('\nthe longitudinal strain developed in wire B is %3.1e',StB)
