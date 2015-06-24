// Chapter9
// Page.No-387
// Example_9_1
// Second order inverting butterworth lowpass filter
// Given
clear;clc;
dc_gain=5;
f1=2*10^3; // Cutoff freq in Hz
Q=10; // Figure of merit
R2=(316*10^3)/10; // Resistance R2
printf("\n Resistance R2 is = %.1f ohm \n",R2) // Result
R3=(100*10^3)/((3.16*Q)-1);
printf("\n Resistance R3 is = %.1f ohm \n",R3) // Result
printf("\n Resistance R1 is Open \n") // Result
R4=(5.03*10^7)/f1;
printf("\n Resistance R4 is = %.1f ohm \n",R4) // Result
R5=R4;
printf("\n Resistance R5 is = %.1f ohm \n",R5) // Result
R6=1.8*10^3; // Assumption
R7=dc_gain*R6;
printf("\n Resistance R7 is = %.1f ohm \n",R7) // Result and its a potentiometer
R8=(R6*R7)/(R6+R7);
printf("\n Resistance R8 is = %.3f ohm \n",R8) // Result