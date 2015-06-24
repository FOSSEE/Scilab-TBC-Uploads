clc
//initialisation of variables
n= 2 //moles
R= 1.99 //cal er mole per degree
T= 80 //C
H1= 94.3 //cal per gram
M= 78 //gms per mole
//CALCULATIONS
w= n*R*(273+T)
H= n*M*H1
E= H-w
//RESULTS
printf (' value of dH= %.f cal',H)
printf (' \n value of dE= %.f cal',E)
