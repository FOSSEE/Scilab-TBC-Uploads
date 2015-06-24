clear ;
clc;
// Example 23.8
printf('Example 23.8\n\n');
//page no. 702
// Solution 

//Given
W = 4 ;// Mass of water -[kg]
Ti= 27+273 ;// Initial temperature -[K]
Pi = 200 ;// Initial pressure -[kPa]
// Neglect the effect of pressure on vloume of liquid, therefore
Pf = Pi ;// Final pressure -[kPa]

// From steam table
V1 = 0.001004 ;// Specific volume at Ti -[cubic metre/kg]
V2 = 1000 * V1 ;//Specific volume at final temperature(Tf) from given condition in problem - [cubic metre/kg]

// We need to do interpolation, look in the steam table to get V so as to bracket 1.004 cubic metre / kg at 200 kPa
va = 0.9024  ;// Specific volume -[cubic metre/kg]
Ta = 400 ;// [K]
vb = 1.025 ;// Specific volume -[cubic metre/kg]
Tb = 450 ;//[K]
vf = V2 ;// Final specific volume -[cubic metre/kg]
 
// Linear interpolation
m=(Tb - Ta)/(vb - va);// slope 
Tf=Ta + m*(vf - va) ;// Final temperature - [K]

printf('\n Final temperature is %.0f K.\n',Tf);