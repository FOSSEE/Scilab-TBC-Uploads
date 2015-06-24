// Chapter9
// Page.No-390
// Example_9_3
// Design of notch filter
// Given
clear;clc;
f1=5*10^3; // notch freq in Hz
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
R6=10*10^3; // Assumption
printf("\n Resistance R6 is = %.1f ohm \n",R6) // Result
R7=R6;
printf("\n Resistance R7 is = %.1f ohm \n",R7) // Result
R8=R6;
printf("\n Resistance R8 is = %.1f ohm \n",R8) // Result
R9=(R6*R7*R8)/(R6*R7+R6*R8+R7*R8); // Since R6||R7||R8
printf("\n Resistance R9 is = %.1f ohm \n",R9) // Result