//Problem 44.14: A long transmission line has a characteristic impedance of 500 - j40  ohm and is terminated in an impedance of (a) 500 + j40 ohm and (b) 600 + j20 ohm. Determine the magnitude of the reflection coefficient in each case.

//initializing the variables:
Zo = 500 - %i*40; // in ohm
ZR1 = 500 + %i*40; // in ohm
ZR2 = 600 + %i*20; // in ohm

//calculation:
//reflection coefficient
p1 = (Zo - ZR1)/(Zo + ZR1)
p2 = (Zo - ZR2)/(Zo + ZR2)
p1mag = (real(p1)^2 + imag(p1)^2)^0.5
p2mag = (real(p2)^2 + imag(p2)^2)^0.5

printf("\n\n Result \n\n")
printf("\n reflection coefficient (a)%.3f and (b)%.3f",p1mag, p2mag)
