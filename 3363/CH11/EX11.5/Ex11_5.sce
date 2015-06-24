//Example 11.3, page 424
clc
disp('Part a')
A=108//in g/mole
M=10.5//in g/cm3
D=6.02*10^23//in atom/mole
n=(D*M)/A
h=6.6*10^-34
printf("\n The fermi energy is  %e electron/cm^3",n)
m=9.1*10^-31//in kg
n=5.9*10^28//per m^2
x=((3*n)/(%pi))^(2/3)
Ef=(h^2/(8*m))*x
printf("\n The energy is  %e J",Ef)
disp('part b')
K=1.38*10^-23//in J-K
T=300//in K
z=(n*h^3)/(2*%pi*m*K*T)^(3/2)
printf("\n The degeneracy term is  %e ",z)
//Anser difference is because of round off
