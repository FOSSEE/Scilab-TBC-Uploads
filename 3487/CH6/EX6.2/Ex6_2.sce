//Chapter 6,Example 6.2 Page 199
clc
clear
Cs = 106 // micro F
C2 = 0.35 // micro F
R2 = 318 // ohms
R1 = 130 // ohms
w = 314
Cp = Cs*(R2/R1)
Rp = R1/(w^2*C2*Cs*10^-12*R2^2)
tang = 1/(w*Rp*Cp*10^-6)
printf (" Rp = %f ohm \n ",Rp)
printf (" Cp = %f μF \n ",Cp)
printf (" tan δ = %f \n ",tang)

//Answers may vary due to round off error
