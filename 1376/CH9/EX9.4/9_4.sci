//9.4
clc;
n=1000/5;
Ie=0.7*1000/100;
Tp=1;
n=200;
Ts=200;
R_actual=Ts+(7/5);
Error_ratio=(200-R_actual)*100/R_actual;
printf("Ratio error=%.2f percent",Error_ratio)
Ts=200-(0.5*200/100);
n=199/1;
R_actual=Ts+(7/5);
Error_ratio=(200-R_actual)*100/R_actual;
printf("\nRatio error=%.2f percent",Error_ratio)