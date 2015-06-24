//Transmission Lines : example 12-5 : (pg 581)
c=3*10^8;//speed of light
f=100*10^6;//frequency of signal
x=2.07*10^8;//velocity of wave propagation
w=c/f;//wavelength in free-space
w1=x/f;//wavelength while traveling through an RG-8A/U coaxial cable
printf("\nIn free space, lambda = c/f = %.f m",w);
printf("\nWhile traveling through RG-8A/U cable, lamda = c/f = %.2f m",w1);
