//Antennas : example 14-4 : pg(674)
c=3*10^8;//velocity of light
f=100*10^6;//frequency
h=c/f;//wavelength
x=h/2;//dipole i.e h/2
l=0.95*x;//applying 95% correction,the actual optimum physical length
L=486/100;//alternative method to find length
printf("\nAt 100MHz, \nh=c/f = %.f m",h);
printf("\nlength of antenna = %.2f m",l);
mprintf("\nalternate method, L = 486/f = %.2f ft which is equal to %.2f m",L,l);
