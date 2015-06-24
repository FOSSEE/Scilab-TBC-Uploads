//Problem 42.11: For the low-pass T section filter shown in Figure 42.34 determine (a) the attenuation coefficient, (b) the phase shift coefficient and (c) the propagation coefficient r.

//initializing the variables:
XL = %i*5; // in ohms
Xc = -1*%i*10; // in ohms
RL = 12; // in ohms
I1 = 1; // in amperes (lets say)

//calculation:
//current I2
I2 = (Xc/(Xc + XL + RL))*I1
//current ratio
Ir = I1/I2
Irmg = (real(Ir)^2 + imag(Ir)^2)^0.5
//attenuation coefficient
a = log(Irmg)
//phase shift coefficient
b = atan(imag(Ir)/real(Ir))
//propagation coefficient 
r = a + %i*b

printf("\n\n Result \n\n")
printf("\nattenuation coefficient is %.3f N ",a)
printf("\nphase shift coefficient is %.3f rad ",b)
printf("\npropagation coefficient is %.3f + (%.3f)i ",a,b)