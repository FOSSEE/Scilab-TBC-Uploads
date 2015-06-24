//Problem 42.09: The propagation coefficients of two filter networks are given by (a) r = (1.25 + i0.52) (b) r = 1.794/_-39.4° Determine for each (i) the attenuation coefficient, and (ii) the phase shift coefficient.

//initializing the variables:
r1 = 1.25 + %i*0.52; // propagation coefficients 
rr = 1.794; // propagation coefficients 
thetar = -39.4; // in ddegrees

//calculation:
//r
r2 = rr*cos(thetar*%pi/180) + %i*rr*sin(thetar*%pi/180)
//attenuation coefficient
a1 = real(r1)
a2 = real(r2)
//phase shift coefficient
b1 = imag(r1)
b2 = imag(r2)

printf("\n\n Result \n\n")
printf("\nattenuation coefficient are for (a) is %.2f N and for (b) is %.3f N ",a1,a2)
printf("\nphase shift coefficient are for (a) is %.2f rad and for (b) is %.3f rad ",b1,b2)