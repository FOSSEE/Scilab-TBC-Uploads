//Chapter 8
//Example 8-11
//ProbOnAD620 
//Page 237,238, Figure 8-17
clear;clc;
//Given
Vout = 100*10^-3 ; E = 5 ; R = 120 ;
Gain = 1000 ;
E1 = 30 *10^6 ;
Gf = 2 ;//Gage factor
Vbridge = Vout / Gain ;
DL = 20*10^-6 ;
DR = (R * Vbridge)/E ;
Rratio = DR / R ;//Change in Resistance
Strain = DL / Gf ;//Change in Length 
Stress = E1 * Strain ; 
printf ( "\n\n Change in Resistance = %.4f ohm ", DR )
printf ( "\n\n Ratio of Resistance = %.9f ohm per ohm ", Rratio )
printf ( "\n\n Strain value = %.9f ", Strain )
printf ( "\n\n Stress value = %.9f psi ", Stress )