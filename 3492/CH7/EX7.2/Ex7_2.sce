clc
//Chapter7
//Ex_2
//Given
N=5*10^28 //in m^-3
e=1.6*10^-19 // in coulombs
Z=4
me=9.1*10^-31 //in Kg
epsilon_o=8.85*10^-12//F/m2
epsilon_r=11.9
//part(a)
alpha_e=(3*epsilon_o/N)*((epsilon_r-1)/(epsilon_r+2))
disp(alpha_e,"Electronic polarizability in F/m2")
//part(b)
//let x=E_loc/E
x=(epsilon_r+2)/3
printf("Local field is a factor of %f greater than applied field",x)
//part(c)
wo=sqrt(Z*e^2/(me*alpha_e))
fo=wo/(2*%pi)
disp(fo,"resonant frequency in Hz is")
