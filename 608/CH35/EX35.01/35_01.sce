//Problem 35.01: For the circuit shown in Figure 35.2 the load impedance Z is a pure resistance. Determine (a) the value of R for maximum power to be transferred from the source to the load, and (b) the value of the maximum power delivered to R.

//initializing the variables:
rv = 120; // in volts
thetav = 0; // in degrees
Z = 15 + %i*20; // in ohm

//calculation: 
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//maximum power transfer occurs when R = mod(Z)
R = (real(Z)^2 + imag(Z)^2)^0.5
//the total circuit impedance
ZT = Z + R
//Current I flowing in the load is given by
I = V/ZT
Imag = (real(I)^2 + imag(I)^2)^0.5
//maximum power delivered
P = R*Imag^2

printf("\n\n Result \n\n")
printf("\n (a)maximum power transfer occurs when R is %.0f ohm",R)
printf("\n (b) maximum power delivered is %.0f W",P)