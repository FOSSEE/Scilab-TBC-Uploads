// Example 3.7, page no-165
clear
clc

//(a)
R1=120
R2=120
R3=120
R4=120
Rg=100
C=(R1*R2*R4)+(R1*R3*R4)+(R1*R2*R3)+(R2*R3*R4)+(Rg*(R1+R4)*(R2+R3))
C=C/10^7
printf("(a)\nC=%.3f*10^7",C)
E=10
F=E*R3*R1*2*10^3/(C*10^7)
printf("\nF = %.1f *10^3 A/mm = %.1f mA/mm",F,F)

//(b)
Fe=2*10^-4
E=10
DeltaE=Fe*E/(4+4*10^-4)
DeltaE=DeltaE*10^3
printf("\n(b)\nDeltaEg=%.1f mV",DeltaE)
