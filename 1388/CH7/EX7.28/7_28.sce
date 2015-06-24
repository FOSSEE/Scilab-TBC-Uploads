clc
//initialisation of variables
V= -0.440 //volt
V1= 0.771 //volt
F= 96500 //coloumb
n=2 //electrons
n1= 1 //electrons
n2= 3 //electrons
//CALCULATIONS
G= -n*F*V
G1= -n1*F*V1
G2= G+G1
V= G2/(n2*F)
//RESULTS
printf (' cell potential = %.4f volt',V) 
