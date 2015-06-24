//Chapter 12,Example 7, page 410
//Determine the induced sheath voltage 
clear
clc
D = 15 // cm
rsh = 5.5/2 // Sheath diameter converted to radius in cm
I = 250 // A
E = 2*10^-7*314*I*log(D/rsh)*10^3
printf("\n Induced sheath voltage per Km = %f V/km",E)
printf("\n If the sheaths are bonded at one end, the voltage between them at the other end = = %f V/km",E*sqrt(3))

// Answers may vary due to round off errors. 
