clc
//initialisation of variables
p= 60 //percent
x= 0.030 //v
E= -0.039 //v
//CALCULATIONS
V= E-x*log10((1-(p/100))/(p/100))
//RESULTS
printf (' Redox potential of sample= %.3f v',V)
