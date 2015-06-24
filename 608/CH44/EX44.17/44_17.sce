//Problem 44.17: A low-loss transmission line has a mismatched load such that the reflection coefficient at the termination is 0.2/_-120°. The characteristic impedance of the line is 80 ohm. Calculate (a) the standing-wave ratio, (b) the load impedance, and (c) the incident current flowing if the reflected current is 10 mA.

//initializing the variables:
rp = 0.2; 
thetap = -120; // in degrees
Zo = 80; // in ohm
Ir = 0.01; // in Amperes

//calculation:
//reflection coefficient
p = rp*cos(thetap*%pi/180) + %i*rp*sin(thetap*%pi/180)
//standing-wave ratio,
s = (1 + rp)/(1 - rp)
//load impedance ZR 
ZR = Zo*(1 - p)/(1 + p)
//incident current
Ii = Ir*(s + 1)/(s - 1)

printf("\n\n Result \n\n")
printf("\n standing-wave ratio, s is %.1f",s)
printf("\n load impedance ZR is %.2f +(%.2f)i ohm",real(ZR), imag(ZR))
printf("\n incident current is %.3f A",Ii)
