//Problem 35.06: Determine, for the network shown in Figure 35.8, (a) the values of R and X that will result in maximum power being transferred across terminals AB, and (b) the value of the maximum power.

//initializing the variables:
rv = 100; // in volts
thetav = 30; // in degrees
R1 = 5; // in ohm
R2 = 5; // in ohm
R3 = %i*10; // in ohm

//calculation: 
//voltage
V = rv*cos(thetav*%pi/180) + %i*rv*sin(thetav*%pi/180)
//Resistance R and reactance X are removed from the network as shown in Figure 35.9
//P.d. across AB,
E = ((R2 + R3)/(R1 + R2 + R3))*V
//With the source removed the impedance, z, ‘looking in’ at terminals AB is given by:
z = (R2 + R3)*R1/(R1 + R2 + R3)
//The equivalent Th´evenin circuit is shown in Figure 35.10. From condition 3, maximum power transfer is achieved when X = -1*imag(z) and R = real(z)
X = -1*imag(z)
R = real(z)
Z = R + %i*X
//Current I flowing in the load is given by
I = E/(z + Z)
Imag = (real(I)^2 + imag(I)^2)^0.5
//maximum power transferred,
P = R*Imag^2

printf("\n\n Result \n\n")
printf("\n (a)maximum power transfer occurs when R is %.2f ohm and X is %.2f ohm",R, X)
printf("\n (b) maximum power delivered is %.0f W",P)