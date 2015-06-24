// Chapter9
// Page.No-444
// Example_9_11
// Design of voltage regulator
// Given
clear;clc;
Vo_min=5; // Min output voltage in volt
Vo_max=12; // Max output voltage in volt
Vref=1.25; // Reference voltage in volt
Iadj=100*10^-6; // Adjustment pin current in ampere
R1=240; // Assumption
R2_min=R1*(Vo_min-Vref)/(Vref+Iadj*R1); // Using Vo_min=Vref*(1+R2/R1)+Iadj*R2
printf("\n Resistance R2_min is = %.1f ohm \n",R2_min) // Result
R2_max=R1*(Vo_max-Vref)/(Vref+Iadj*R1); // Using Vo_max=Vref*(1+R2/R1)+Iadj*R2
printf("\n Resistance R2_max is = %.1f ohm \n",R2_max) // Result
printf("\n Therefore resistance should be varied from R2_min to R2_max values.To do this we take R2 as 3kohm potentiometer \n")
C2=1*10^-6; // Added to the circuit to improve transient response
C3=1*10^-6; // Added to the circuit to obtain high ripple rejection ratios