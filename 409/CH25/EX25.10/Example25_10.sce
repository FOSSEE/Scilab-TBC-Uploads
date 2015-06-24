clear ;
clc;
// Example 25.10
printf('Example 25.10\n\n');
//page no. 788
// Solution 

// Given 
Ex_hv = 29770.0 ;// Experimental heating value of given coal - [kJ/kg]
// Coal analysis

C = 71.0/100 ;//Fraction of C in coal 
H2 = 5.6/100 ;// Fraction of H2 in coal 
N2 = 1.6/100 ;// Fraction of N2 in coal 
S = 2.7/100 ;// Fraction of S in coal 
ash = 6.1/100 ;// Fraction of ash in coal 
O2 = 13.0/100 ;//Fraction of O2 in coal 

//Higher heating value (HHV) by Dulong formula 
HHV = 14544*C + 62028*(H2 - O2/8) + 4050*S ;// Higher heating value (HHV) by Dulong formula -[Btu/lb]
HHV_SI = HHV *1.055/0.454 ;// HHV in SI unt - [kJ/kg]

printf('The experimental heating value -                       %.0f kJ.\n',Ex_hv) ;
printf(' Higher heating value (HHV) by Dulong formula -         %.0f kJ.\n',HHV_SI) ;
printf('\n The two values are quite close.' ) ;