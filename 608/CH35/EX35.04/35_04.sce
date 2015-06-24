//Problem 35.04: In the network shown in Figure 35.4 the load consists of a fixed capacitive reactance of 7 ohm and a variable resistance R. Determine (a) the value of R for which the power transferred to the load is a maximum, and (b) the value of the maximum power.

//initializing the variables:
rv = 60; // in volts
thetav = 0; // in degrees
R1 = 4; // in ohm
XL = 10; // in ohm
Xc = 7; // in ohm
R2 = %i*XL; // in ohm
R3 = -1*%i*Xc; // in ohm

//calculation: 
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//maximum power transfer is achieved when
R = (R1^2 + (XL - Xc)^2)^0.5
//Hence source impedance,
ZT = R1 + R2 + R3 + R
//Current I flowing in the load is given by
I = V/ZT
Imag = (real(I)^2 + imag(I)^2)^0.5
//maximum power transferred,
P = R*Imag^2

printf("\n\n Result \n\n")
printf("\n (a)maximum power transfer occurs when R is %.2f ohm",R)
printf("\n (b) maximum power delivered is %.0f W",P)