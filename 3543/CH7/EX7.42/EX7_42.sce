// Example 7.42
// Calculation of a)excess loss,b)insertion loss,c)crosstalk and d)split ratio for the device.
// Page no 496

clc;
clear;
close;

//Given data
P1=60*10^-6;                 // Power launched in port 1
P2=0.004*10^-6;              // Power launched in port 2
P3=26*10^-6;                // Power launched in port 3 
P4=27.5*10^-6;              // Power launched in port 4

// a)Excess loss
E=10*log10(P1/(P3+P4)); 

//b)Insertion loss
I1=10*log10(P1/P3);
I2=10*log10(P1/P4);

//c)Crosstalk
C=10*log10(P2/P1);

//d)Split ratio
S=(P3/(P3+P4))*100;


//Displaying results in the command window            
printf("\n Excess loss(in dB) = %0.1f  ",E);
printf("\n Insertion loss(in dB) = %0.2f  ",I1);
printf("\n Insertion loss (in dB)= %0.2f  ",I2);
printf("\n Crosstalk (in dB)= %0.1f  ",C);
printf("\n Split ratio(in percentage) = %0.1f  ",S);

