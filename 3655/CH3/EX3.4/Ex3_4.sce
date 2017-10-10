// Example 3.4
// Computation for percentage of electrons leaving a tungstan filament which can surmount a barrier of height 1eV//
// Page no.78

clc;
clear;
close;

//Given data ;
Vr=1;
VT=2700/11600;//VT=T/11600


//Calculation for percentage of electrons leaving a tungstan filament at 2700 degree K//
P1=(exp(-Vr/VT))*100;//P1=I/Ith

//Hence only about 1.4% of the electrons have surface-directed energies in excess of 1eV//


//Displaying the result in command window
printf('\n Percentage of electrons leaving a tungstan filament which can surmount a barrier of height 1eV = %0.1f percent',P1);


//Answers are varying due to round off error//
