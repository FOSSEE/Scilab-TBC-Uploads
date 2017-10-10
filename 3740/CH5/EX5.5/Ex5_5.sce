//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 5.5
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
lambda=0.84e-6;//wavelength in m
DeltaNu=1.45e13;//Transition linewidth in Hz
Gamma=3.5e3;//Loss coefficient in m^(-1)
n=3.6;//Refractive index of GaAs medium
n1=1;//Refractive index of air medium
l=300e-6;//Length in m
d=2e-6;//Diameter in m
etai=1;//Internal quantum efficiency
e=1.6e-19;//Electronic charge in C

R=((n-n1)/(n+n1))^2;//Reflectance at GaAs/air interface by Fresnel equation
mprintf("\n R = %.2f",R);

Kth=Gamma+1/(2*l)*log(1/R^2);//Threshold gain in m^(-1)
mprintf("\n Kth = %.1f m^(-1)",Kth);//The answers vary due to round off error

Jth=8*%pi*e*d*DeltaNu*(n^2)/(etai*(lambda^2))*Kth;//Threshold current density in A m^(-2)
mprintf("\n Jth = %.1f A mm^-2",Jth/1e6);//Dividing by 10^6 to convert into A mm^(-2)
//The answers vary due to round off error
