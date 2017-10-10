//Problem 15.17: Determine the p.d.’s V1 and V2 for the circuit shown in Figure 15.17 if the frequency of the supply is 5 kHz. Draw the phasor diagram and hence determine the supply voltage V and the circuit phase angle.

//initializing the variables:
R1 = 4; // in ohms
C = 1.273E-6; // in Farads
L = 286E-6; // in Henry
R2 = 8; // in ohms
f = 5000; // in Hz
I = 5; // in amperes

//calculation:
XL = 2*%pi*f*L
phid1 = atan(XL/R1)*180/%pi
V1 = I*((R1^2 + XL^2)^0.5)
Xc = 1/(2*%pi*f*C)
V2 = I*((R2^2 + Xc^2)^0.5)
phid2 = atan(Xc/R2)*180/%pi
Z = ((R1+R2)^2 + (Xc-XL)^2)^0.5
V = I*Z
phid = atan((Xc-XL)/(R1+R2))*180/%pi

printf("\n\n Result \n\n") 
printf("\n Voltage V1 = %.2f V and V2 = %.1f V",V1, V2)
printf("\n Voltage supply, V = %.0f V",V)
printf("\n circuit phase angle is %.2f°",phid)