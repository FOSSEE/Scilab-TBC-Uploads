clear;
clc;
disp("--------------Example 4.13---------------")
SNRdB=40; 
nb=(SNRdB-1.76)/6.02; // SNRdB = 6.02(nb)+1.76
printf("\nnb = %4.2f",nb); // display result
printf("\nTherefore telephone companies usually assign %d or %d bits per sample.",ceil(nb),ceil(nb)+1); // round off to nearest integer as number of bits should be a whole number

