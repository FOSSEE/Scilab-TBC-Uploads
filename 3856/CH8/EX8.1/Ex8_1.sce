//Calculate the Specific conductance

//Example 8.1

clc;

clear;

C=0.689;  //Cunductance of the cell in ohm^-1

c=0.255;  //Cell constant in  cm^-1 (c=l/A)

k=C*c;  //Specific conductance in ohm^-1 cm^-1

printf("Specific conductance = %.3f ohm^-1 cm^-1",k);
