clc
//initialisation of variables
e= 0
e1= -0.37
k= -0.05916 //j/mol
a= 0.02
a1= 0.01
p= 730 //mm of Hg
//CALCULATIONS
E= (e-e1)-k*log10(a*sqrt(p/760)/(a1*a))
//RESULTS
printf (' cell potential = %.2f volt',E-0.03)