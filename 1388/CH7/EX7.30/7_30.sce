clc
//initialisation of variables
c= 391
c1= 129
f= 1
k= -0.05915 //j/mol
//CALCULATIONS
E= (k/f)*log10(c1/c)
//RESULS
printf (' junction potential = %.4f volt',E)
