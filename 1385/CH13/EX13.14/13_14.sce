clc
//initialisation of variables
T= 25 //C
F= 1160 //cal
P= 0.1 //atm
P1= 1 //atm
R= 2 //cal/mole K
//CALCULATIONS
F1= F+R*(273+T)*log(P/P1^2)
F2= F+R*(273+T)*log(P1/P^2)
//RESULTS
printf (' value of F = %.f cal',F1)
printf (' \n value of F = %.f cal',F2)
