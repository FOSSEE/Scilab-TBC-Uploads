clc
//Intitalisation of variables
clear
Ka= 1.752*10^-5
c= 0.1 //M
//CALCULATIONS
ch= sqrt(Ka*c)
ch1= -0.5*Ka+sqrt(Ka*c)
r= ch1/c
//RESULTS
printf ('CH+ = %.3e g ion per litre',ch)
printf ('\n CH+ = %.3e g ion per litre',ch1)
printf ('\n degree of dissociation = %.2e ',r)
