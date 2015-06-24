//Problem 42.03: The nominal impedance of a low-pass pi section filter is 500 ohm and its cut-off frequency is at 100 kHz. Determine (a) the value of the characteristic impedance of the section at a frequency of 90 kHz, and (b) the value of the characteristic impedance of the equivalent low-pass T section filter.

//initializing the variables:
R0 = 500; // in ohm
fc = 100000; // in Hz
f = 90000; // in Hz

//calculation:
//characteristic impedance of the pi section
Zpi = R0/(1 - (f/fc)^2)^0.5
//characteristic impedance of the T section
Zt =  R0*(1 - (f/fc)^2)^0.5

printf("\n\n Result \n\n")
printf("\ncharacteristic impedance of the pi section is %.0f ohm",Zpi)
printf("\ncharacteristic impedance of the T section is %.0f ohm",Zt)