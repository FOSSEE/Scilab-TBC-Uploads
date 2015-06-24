//chapter 30
//example 6
clc
//given
epsilon0=8.85*10^-12 //coul2/nt-m2
A=100*10^-4//area of the plate in square meter
d=1*10^-2 //separation b/w plates in meter
V0=100//in volts
E0=1*10^4 //Electric field in the air gap in volts/meter
k=7
k0=1
E=1.43*10^3 //in volts/metre
D=k*E*epsilon0
P=epsilon0*(k-1)*E
//(a)
disp(D,"(a)Electric displacement in dielectric in coul/square metre is ")
disp(P,"Electric polarisation in dielectric in coul/square meter is")
//(b)
D0=k0*epsilon0*E0
disp(D0,"(b)Electric displacement in air gap in coul/square metre is ")
P0=epsilon0*(k0-1)*E0
disp(P0,"Electric polarisation in air gap in coul/square meter is")
