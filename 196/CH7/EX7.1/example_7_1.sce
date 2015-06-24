//Chapter 7
//Example 7-1
//ProbOnDeadZoneCircuit 
//Page 201,202, Figure 7-15
clear;clc;
V = 15 ;
mR = 30*10^3 ;
R = 10*10^3 ; 
Ei = -10 ; 
Vref = V / 3 ;
Voa = -Ei-Vref ; 
Vob = Ei / 2 ;
printf ( "\n\n Values of Voa and Vob are %.4f V , %.4f V" , Voa, Vob)