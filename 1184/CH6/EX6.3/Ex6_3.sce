//Example 6-3, Page No - 187

clear
clc

R =1*10^3
phaseshift =4.263
phaseshift_center= 45
f =7.04*10^6

phase_l = phaseshift_center - phaseshift
phase_u = phaseshift_center + phaseshift
phaserange_total = phase_u - phase_l

Xc1 = 1161
C1 = 1/(6.28*f*Xc1)
Xc2 = 861
C2 = 1/(6.28*f*Xc2)

printf('The two values of the capacitance to achieve total \ndeviation are %.2f to %.2f picofarad',C1*10^12,C2*10^12)
