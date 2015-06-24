// To check the capability of detecting unbalance
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 5-2 in Page 102


clear; clc; close;

// Given data
// Resistances of the 4 arms in ohm
R_1 = 1000;
R_2 = 100;
R_3 = 200;
R_4 = 2005;

E = 5; // battery EMF in volt
S_I = 1*(10^-3)/(10^-6); //Current sensitivity in m/A
R_g = 500; //Internal resistance of galvanometer in ohm




//Calculations

//Calculations are made wrt fig 5-3 in page 103
//Bridge balance occurs if arm BC has a resistance of 2000 ohm. The diagram shows arm BC has as a resistance of 2005 ohm

//To calculate the current in the galvanometer, the ckt is thevenised wrt terminals B and D.
//The potenttial from B to D, with the galvanometer removed is the Thevenin voltage

// E_TH = E_AD - E_AB 

E_TH = E * ((R_2/(R_2+R_3)) - (R_1/ (R_1+R_4)));
R_TH = ((R_2 * R_3/(R_2+R_3)) + (R_1 * R_4/ (R_1+R_4)));

//When the galvanometer is now connected to the output terminals, The current through the galvanometer is

I_g = E_TH /(R_TH +R_g);
d = I_g * S_I;
printf("The deflection of the galvanometer = %0.3f mm",d*1000);
disp('Given that galvanometer is capable of detecting a deflection of 1mm');
disp('Hence looking at the result,it can be seen that this galvanometer produces a deflection that can be easily observed');

//Result
// The deflection of the galvanometer = 2.247 mm 
// Given that galvanometer is capable of detecting a deflection of 1mm   
 
// Hence looking at the result,it can be seen that this galvanometer produces a deflection that can be easily observed   
 



