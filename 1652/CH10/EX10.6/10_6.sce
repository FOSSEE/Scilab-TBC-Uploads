clc
//Initialization of variables
prob=0.001
R=1
N=6.023*10^23
//calculations
dS=1.987*2.303*log10(prob) /N
//results
printf("change in entropy = %.1e eu",dS)
