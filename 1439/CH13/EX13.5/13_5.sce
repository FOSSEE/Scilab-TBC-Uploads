clc 
//initialisation of variables
Ke= 48.15
Ki= 390.6
c= 0.001028 //N
//CALCULATIONS
a= Ke/Ki
K= a^2*c/(1-a)
//RESULTS
printf ('ionisation constant= %.2e ',K)
