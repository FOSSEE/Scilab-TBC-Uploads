//Problem 35.03: For the network shown in Figure 35.3, determine (a) the value of the load resistance R required for maximum power transfer, and (b) the value of the maximum power transferred.

//initializing the variables:
rv = 200; // in volts
thetav = 0; // in degrees
R1 = 100; // in ohm
C = 1E-6; // in farad
f = 1000; // in Hz

//calculation: 
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//Capacitive reactance, Xc
Xc = 1/(2*%pi*f*C)
//Hence source impedance,
z = R1*(%i*Xc)/(R1 + %i*Xc)
//maximum power transfer is achieved when R = mod(z)
R = (real(z)^2 + imag(z)^2)^0.5
//Total circuit impedance at maximum power transfer condition,
ZT = z + R
//Current I flowing in the load is given by
I = V/ZT
Imag = (real(I)^2 + imag(I)^2)^0.5
//maximum power transferred,
P = R*Imag^2

printf("\n\n Result \n\n")
printf("\n (a)maximum power transfer occurs when R is %.2f ohm",R)
printf("\n (b) maximum power delivered is %.0f W",P)