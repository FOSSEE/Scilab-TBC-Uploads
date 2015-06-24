//Problem 35.02: If the load impedance Z in Figure 35.2 of problem 35.01 consists of variable resistance R and variable reactance X, determine (a) the value of Z that results in maximum power transfer, and (b) the value of the maximum power.

//initializing the variables:
rv = 120; // in volts
thetav = 0; // in degrees
Z = 15 + %i*20; // in ohm

//calculation: 
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//maximum power transfer occurs when X = -1*imag(Z) and R = real(Z)
z = real(Z) - %i*imag(Z)
//Total circuit impedance at maximum power transfer condition,
ZT = Z + z
//Current I flowing in the load is given by
I = V/ZT
Imag = (real(I)^2 + imag(I)^2)^0.5
//maximum power delivered
P = real(Z)*I^2

printf("\n\n Result \n\n")
printf("\n (a)maximum power transfer occurs when Z is %.0f + (%.0f)i ohm",real(z), imag(z))
printf("\n (b) maximum power delivered is %.0f W",P)