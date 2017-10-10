clear;
clc;
printf("\nEx2.40\n");
//page no.-86
//given
h=6.62*10^-27;..........//planck's constant in ergs-sec
m=9.11*10^-28;.........//mass of electron in gm
e=4.803*10^-10;...........//charge
V=1/3;..................//potential difference in e.s.u.
//AS V*e=m*v^2/2, put into lambda=h/m*v

lambda=h/sqrt(2*V*e*m)..........//wavelength in cm

printf("\nwavelength is 1.226*10^8 cm\n"); 
