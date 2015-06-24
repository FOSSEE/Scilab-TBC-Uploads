//Chapter 6,Example 6.1 Page 198
clc
clear
Cs = 106 // micro F
C2 = 0.35 // micro F
R2 = 318 // ohms
R1 = 130 // ohms
w = 314
Rs = R1*(C2/Cs)
Cs1 = Cs*(R2/R1)
tang = w*Cs1*10^-6*Rs
cosp = tang
printf (" Rs = %f ohm \n ",Rs)
printf (" Cs = %f μF \n ",Cs1)
printf (" tan δ s = %f \n ",tang)
printf (" cos φ = %f \n ",cosp)
 
//Answers may vary due to round off error
