// Example 7.42
// Calculation of a)excess loss,b)insertion loss,c)crosstalk and d)split ratio for the device.
// Page no 497

clc;
clear;
close;

//Given data
P1=100*10^-6;                 // Power launched in port 1
P2=0.005*10^-6;              // Power launched in port 2
P3=30*10^-6;                // Power launched in port 3 
P4=35*10^-6;              // Power launched in port 4

// a)Excess loss
E=10*log10(P1/(P3+P4)); 
// b)Insertion loss
I1=10*log10(P1/P3);
I2=10*log10(P1/P4);

//c)Crosstalk
C=10*log10(P2/P1);

//d)Split ratio
S=(P3/(P3+P4))*100;


//Displaying results in the command window            
printf("\n Excess loss(in dB) = %0.2f  ",E);
printf("\n Insertion loss(in dB) = %0.3f  ",I1);
printf("\n Insertion loss (in dB)= %0.2f  ",I2);
printf("\n Crosstalk (in dB)= %0.1f  ",C);
printf("\n Split ratio(in percentage) = %0.2f  ",S);
// The cross talk answer computation is wrong in the book
