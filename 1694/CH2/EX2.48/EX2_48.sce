clear;
clc;
printf("\nEx2.48\n");
//page no.-91
//given
lambda=5.4*10^-5;.............//wavelength in cm
c=3*10^10;..................//speed of light in cm/sec
h=6.62*10^-27;........//planck's constant in ergs-sec
e=1.6*10^-12;.........//charge in ergs
w=1.2;.........//work function in eV
eo=4.8*10^-10;.........//charge in e.s.u.

E=(h*c)/(lambda*e).............//energy of one quantum of light in eV

//AS V*e=E-w

V=((E-w)*e*300)/eo...................//potential diff. in volts

printf("\nretarding potential is 1.09 volts\n"); 
