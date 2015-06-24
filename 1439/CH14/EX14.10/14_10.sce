clc
//initialisation of variables
n= 2
R= 0.0591
C= 0.01 //M
C1= 0.1 //M
//CALCULATIONS
E= -R*log10(C/C1)/n
//RESULTS
printf ('electromotive force of the cell = %.4f volt',E)
