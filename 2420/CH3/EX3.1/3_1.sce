clc
clear
//Initialization of variables
re=6
k=1.4
//calculations
nt=1-1/re^(k-1)
ntt=nt*100
//results
printf("Thermal efficiency = %.1f percent",ntt)
