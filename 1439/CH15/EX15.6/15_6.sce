clc
//initialisation of variables
K= 1.75*10^-5
c= 0.01 //M
//CALCULATIONS
r= 10^(-0.509*sqrt(c))
Ka= K/r^2
//RESULTS
printf ('ionisation constant = %.2e ',Ka)
