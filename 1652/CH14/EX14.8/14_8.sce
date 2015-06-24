clc
//Initialization of variableH
disp("From table 14-3,")
HH=0
HHcoo=-98
HHcooh=-98
SH=0
SHcoo=21.9
SHcooh=39.1
KH=0
KHcoo=58.64
KHcooh=62.38
//calculationH
dH=HH+HHcoo-HHcooh
dS=SH+SHcoo-SHcooh
dK=KH+KHcoo-KHcooh
K=10^dK
//results
printf(" dS0 = %.1f eu",dS)
printf("\n dH0 = %.1f kcal",dH)
printf("\n log Krm = %.2f ",dK)
printf("\n Krm = %.1e m",K)
