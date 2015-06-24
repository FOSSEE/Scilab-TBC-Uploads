//Chapter 6,Example 6.3 Page 199
clc
clear
Cs = 500*10^-12 // F
R1 = 800 // ohm
R2 = 180 // ohm
C2 = 0.15 // micro F
w = 314
V = 33*10^3
Cp = Cs*(R2/R1)
Rp = R1/(w^2*C2*Cs*10^-6*R2^2)
tang = 1/(w*Rp*Cp)
pl = V^2/Rp
printf (" Rp = %e ohm \n ",Rp)
printf (" Cp = %e F \n ",Cp)
printf (" tan δ = %f \n ",tang)
printf (" Power loss = %f watts \n ",pl)

//Answer may vary due to round off error
