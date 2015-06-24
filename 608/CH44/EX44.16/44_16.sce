//Problem 44.16: A transmission line has a characteristic impedance of 600/_0° and negligible loss. If the terminating impedance of the line is 400 + j250 ohm, determine (a) the reflection coefficient and (b) the standing-wave ratio.

//initializing the variables:
rzo = 600; // in ohm
thetazo = 0; // in degrees
ZR = 400 + %i*250; // in ohm

//calculation:
//characteristic impedance
Zo = rzo*cos(thetazo*%pi/180) + %i*rzo*sin(thetazo*%pi/180)
//reflection coefficient
p = (Zo - ZR)/(Zo + ZR)
pmag = (real(p)^2 + imag(p)^2)^0.5
//standing-wave ratio,
s = (1 + pmag)/(1 - pmag)

printf("\n\n Result \n\n")
printf("\n reflection coefficient, is %.4f +(%.4f)i V",real(p), imag(p))
printf("\n standing-wave ratio, s is %.3f",s)
