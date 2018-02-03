// Exa 1.15

clc;
clear;

// Given

// Refer fig. 1.73 
Rtotal = 11*10^6; // Total resistance in Ohms
Vg = 1; // Voltage at gate of balancing circuit
Vmax = 1000; // Max voltage in Volts
// Solution

printf('When the selector switch is at 1000 V position, and the mass input is 1000 V, the drop across R7 should be 1 value \n');
R7 = (Vg/Vmax)*Rtotal;
printf('R7 = %d k Ohms \n',R7/1000);
printf('Similarly, when the selector switch is at the 300 V position, the drop across (R6+R7) should be 1 V \n');
R6 = (Vg/300)*Rtotal-R7;
printf('R6 = %.2f k Ohms \n',R6/1000);
R5 = (Vg/100)*Rtotal-(R7+R6);
printf('R5 = %.2f k Ohms \n',R5/1000);
R4 = (Vg/30)*Rtotal-(R7+R6+R5);
printf('R4 = %.2f k Ohms \n',R4/1000);
R3 = (Vg/10)*Rtotal-(R7+R6+R5+R4);
printf('R3 = %.2f k Ohms \n',R3/1000);
R2 = (Vg/3)*Rtotal-(R7+R6+R5+R4+R3);
printf('R2 = %.2f k Ohms \n',R2/1000);
R1 = Rtotal - (R2+R3+R4+R5+R6+R7);
printf('R1 = %.2f k Ohms \n',R1/1000);
