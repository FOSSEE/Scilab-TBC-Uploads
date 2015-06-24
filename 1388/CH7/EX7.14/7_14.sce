clc
//initialisation of variables
a= 2.4*10^-4
Ph= 11.54
//CALCULATIONS
Ph1= -log10(a)
a= 10^(-Ph)
//RESULTS
printf (' pH of solution = %.2f  ',Ph1)
printf (' \n activity coefficient = %.1e  ',a)
