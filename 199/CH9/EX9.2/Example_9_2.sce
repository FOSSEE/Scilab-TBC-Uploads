// Chapter9
// Page.No-388
// Example_9_2
// Second order inverting butterworth bandpass filter
// Given
clear;clc;
f1=5*10^3; // Center freq in Hz
Q=10; // Figure of merit
R2=100*10^3; // Constant for band-pass filter
printf("\n Resistance R2 is = %.1f ohm \n",R2) // Result
R3=(100*10^3)/((3.48*Q)-1);
printf("\n Resistance R3 is = %.1f ohm \n",R3) // Result
printf("\n Resistance R1 is Open \n") // Result
R4=(5.03*10^7)/f1;
printf("\n Resistance R4 is = %.1f ohm \n",R4) // Approximately 10kohm
R5=R4;
printf("\n Resistance R5 is = %.1f ohm \n",R5) // Approximately 10kohm and its a potentiometer
