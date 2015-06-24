// Example 3.6 page no-165
clear
clc
ch_l=0.075
orig_l=50

S=ch_l/orig_l
E=9.66*10^5
stress=E*S
area=1.5
f=stress*area
printf("Strain = %.4f cm/cm\nStress =%d kg/cm^2\nForce = %.1f kg",S,stress,f)
