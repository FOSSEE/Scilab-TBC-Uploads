clc
//Intitalisation of variables
clear
k= 0.059
e= -0.401 //volt
c1= 10^-14 // g ion per litre
c2= 10^-7 // g ion per litre
//CALCULATIONS
E1= e+k*log10(c1)
E2= e+k*log10(c2)
//RESULTS
printf ('oxidation potential = %.2f volt ',E1) 
printf ('\n oxidation potential = %.2f volt ',E2) 
