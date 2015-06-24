// 2.33
clc;
E_20=0.112*10^-3;// emf at 20degree C
E_900=8.446*10^-3;
E_1200=11.946*10^-3;
E1=E_900-E_20;
E2=E_1200-E_20;
//E1=1.08*R1/(R1+2.5+R2      (i)
//E2=1.08*(R1+2.5)/(R1+2.5+R2      (ii)
//on solving (i) and (ii)
R1=5.95;
R2=762.6;
printf("Value of resistance R1=%.2f ohm",R1)
printf("\nValue of resistance R2=%.2f ohm",R2)
