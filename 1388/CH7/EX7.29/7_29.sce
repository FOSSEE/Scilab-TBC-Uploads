clc
//initialisation of variables
c= 10^-7
c1= 1
f= 1
k= -0.05915 //j/mol
//CALCULATIONS
E= (k/f)*log10(c/c1)
//RESULTS
printf (' cell potential = %.5f volt',E)
