//Problem 15.03: Determine the capacitive reactance of a capacitor of 10 μF when connected to a circuit of frequency (a) 50 Hz (b) 20 kHz

//initializing the variables:
C = 10E-6; // in Farads
f1 = 50; // in Hz
f2 = 20000; // in Hz

//calculation:
Xc1 = 1/(2*%pi*f1*C)
Xc2 = 1/(2*%pi*f2*C)

printf("\n\n Result \n\n") 
printf("\n (a)Capacitive reactance, Xc = %.1f ohms ", Xc1)
printf("\n (b)Capacitive reactance, Xc = %.3f ohms ", Xc2)