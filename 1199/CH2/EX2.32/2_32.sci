// 2.32
clc;
Rm=50;
Re=12;
E=33.3*10^-3;
i=0.1*10^-3;
Rs=(E/i)-Rm-Re;
printf("Series resistance=%.2f ohm",Rs)
Re=13;
i1=E/(Rs+Re+Rm);
AE=[(i1-i)/i]*800;
printf("\nApproximate error due to rise in resistance of 1 ohm in Re=%.2f degree C",AE)
R_change=50*0.00426*10;
i1=E/(Rs+Re+Rm+R_change);
AE=[(i1-i)/i]*800;
printf("\nApproximate error due to rise in Temp. of 10=%.2f degree C",AE)
