clc
//initialisation of variables
n=2 
F= 96500 //coloumbs
E= 0.337 //volt
E1= -0.403 //volt
//CALCULATIONS
E0= E-E1
G= -n*F*E0/4.184
//RESULTS
printf ('voltage of cell = %.3f volt',E0)
printf ('\n gibbs free energy= %.f cal',G)
