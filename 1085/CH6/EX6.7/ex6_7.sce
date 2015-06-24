//Exam:6.7
clc;
clear;
close;
W_t=4.52;//Work function for tungesten(in eV)
W_b=2.5;//Work function for barrium(in eV)
h=6.62*(10^(-34));//Planck's constant(in m2*kg/s)
c=3*10^8;//speed of light (in m/s)
e=1.6*10^-19;//electron charge(in coulomb)
W_T=W_t*e;//Work function for tungesten(in Joule)
W_B=W_b*e;//Work function for barrium(in Joule)
Wavelength_T=(h*c/W_T)*10^10;//wavelength of light which can just eject electron from tungsten
Wavelength_B=(h*c/W_B)*10^10;//wavelength of light which can just eject electron from barrium
disp(Wavelength_T,'wavelength of light which can just eject electron from tungsten(in Angstrom)=')
disp(Wavelength_B,'wavelength of light which can just eject electron from barrium(in Angstrom)=')