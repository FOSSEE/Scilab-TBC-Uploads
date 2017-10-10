// Example 4.4
// Computation for position of the intrinsic fermi level in germanium at 300K//
// Page no.93

clc;
clear;
close;

//Given data ;
kT=0.0259;
mn=0.55;
mp=0.37;


//Calculation for position of the fermi level with respect to the middle of the bandgap//
P=-((3*kT)/4)*log(mn/mp);//P=(EF-E_midgap

//the fermi level is located at -7.7 x 10^-3 eV below the middle of the forbidden gap of the intrinsic germanium at 300K//


//Displaying the result in command window
printf('\n Position of the fermi level with respect to the middle of the bandgap = %0.1f x 10^-3 eV',P*10^3);



