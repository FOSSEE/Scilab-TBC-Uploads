//Problem 34.02: For the network shown in Figure 34.7, determine (a) the equivalent circuit impedance across terminals AB, (b) supply current I and (c) the power dissipated in the 10 ohm resistor.

//initializing the variables:
rv = 40; // in volts
thetav = 0; // in degrees
ZA = %i*10; // in ohm
ZB = %i*15; // in ohm
ZC = %i*25; // in ohm
ZD = -1*%i*8; // in ohm
ZE = 10; // in ohm

//calculation: 
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//The network of Figure 34.7 is redrawn, as in Figure 34.8, showing more clearly the part of the network 1, 2, 3 forming a delta connection  This may he transformed into a star connection as shown in Figure 34.9.
Z1 = ZA*ZB/(ZA + ZB + ZC)
Z2 = ZC*ZB/(ZA + ZB + ZC)
Z3 = ZA*ZC/(ZA + ZB + ZC)
//The equivalent network is shown in Figure 34.10 and is further simplified in Figure 34.11
//(ZE + Z3) in parallel with (Z1 + ZD) gives an equivalent impedance of
z = (ZE + Z3)*(Z1 + ZD)/(Z1 + ZD + ZE + Z3)
//Hence the total circuit equivalent impedance across terminals AB is given by
Zab = z + Z2
//Supply current I
I = V/Zab
I1 = ((Z1 + ZD)/(Z1 + ZD + ZE + Z3))*I
I1mag = (real(I1)^2 + imag(I1)^2)^0.5
//Power P dissipated in the 10 ohm resistance of Figure 34.7 is given by
Pr10 = ZE*I1mag^2

printf("\n\n Result \n\n")
printf("\n (a)the equivalent circuit impedance across terminals AB is %.2f + (%.2f)i ohm",real(Zab), imag(Zab))
printf("\n (b)supply current I is %.2f + (%.2f)i A",real(I), imag(I))
printf("\n (c)power P dissipated in the 10 ohm resistor is %.2f W",Pr10)