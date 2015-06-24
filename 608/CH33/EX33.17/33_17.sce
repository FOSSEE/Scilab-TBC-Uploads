//Problem 33.17: (a) Determine an equivalent Th´evenin circuit for terminals AB of the network shown in Figure 33.81. (b) Calculate the power dissipated in a (600 - i800)ohm impedance connected between A and B of Figure 33.81.

//initializing the variables:
V = 5; // in volts
i = 0.004; // in Amperes
R1 = 2000; // in ohm
R2 = %i*1000; // in ohm

//calculation: 
//Converting the Th´evenin circuit to a Norton network gives
Isc1 = V/R2
//Thus Figure 33.81 converts to that shown in Figure 33.82. The two Norton equivalent networks may be combined, giving
Isc = Isc1 + i
z = R1*R2/(R1 + R2)
//This results in the equivalent network shown in Figure 33.83. Converting to an equivalent Th´evenin circuit gives open circuit e.m.f. across AB,
E = Isc*z
//Thus the The´venin equivalent circuit is as shown in Figure 33.84.
R = 600 - %i*800; // in ohms
//When a R impedance is connected across AB, the current I flowing is given by
I = E/(z + R)
Imag = (real(I)^2 + imag(I)^2)^0.5
//the power dissipated in the R resistor is
PR = R*Imag^2

printf("\n\n Result \n\n")
printf("\n the power dissipated in the (600 - i800) ohm resistor is %.2E W", PR)