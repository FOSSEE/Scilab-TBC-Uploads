// Example 23.2, page no-625
clear
clc
E=370*10^3//energy of c-c bond j/mol\
lam=3200*10^-10 //m
h=6.626*10^-34
c=3*10^8//m/s
E1=h*c/lam
Ec=E/(6.02*10^23)
printf("\nE=%.2f*10^-19 J",E1*10^19)
printf("\nThe Energy of c-c Bond = %.1f * 10^-19",Ec*10^19)
printf("\n\nThe UV light photon energy is sufficient to break a C-C bond.\nTherefore, the polymer deteriorates under the influence of UV light")
