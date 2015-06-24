//Problem 15.02: A coil has an inductance of 40 mH and negligible resistance. Calculate its inductive reactance and the resulting current if connected to (a) a 240 V, 50 Hz supply, and (b) a 100 V, 1 kHz supply.

//initializing the variables:
L = 0.040; // in Henry
V1 = 240; // in volts
V2 = 100; // in volts
f1 = 50; // in Hz
f2 = 1000; // in Hz

//calculation:
XL1 = 2*%pi*f1*L
I1 = V1/XL1
XL2 = 2*%pi*f2*L
I2 = V2/XL2

printf("\n\n Result \n\n") 
printf("\n (a)Inductive reactance, XL = %.2f ohms and current I = %.2f A", XL1, I1)
printf("\n (b)Inductive reactance, XL = %.1f ohms and current I = %.3f A", XL2, I2)