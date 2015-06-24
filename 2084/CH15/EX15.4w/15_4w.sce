//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 15.4w
//calculation of the extension of the wire over its natural length

//given data
m=5*10^-3//mass(in kg) of the wire
L=50*10^-2//length(in cm) of the wire
v=80//speed(in m/s) of the wave
Y=16*10^11//Young modulus(in N/m^2)
A=1*10^-6//area(in m^2) of cross section of the wire

//calculation
mu=m/L//linear mass density
F=mu*v^2//tension in the wire
deltaL=(F*L)/(A*Y)//extension in the length of wire

printf('the extension of the wire over its natural length is %3.2f mm',deltaL*10^3)
