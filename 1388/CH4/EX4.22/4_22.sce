clc
//initialisation of variables
p= 1 //atm
p1= 3 //atm
R= 1.987 //cal/mole K
T= 27 //C
b= 0.0428 //l mole^-1
a= 3.61 //l^2 atm mole^-1
//CALCULATIONS
G= R*(273+T)*log(p/p1)
A= R*(273+T)*log(p/p1)
G1= R*(273+T)*log(p/p1)+(b-(a/(0.08205*(T+273))))*(p-p1)*(R/0.08205)
//RESULTS
printf (' Gibs free energy= %.f cal',G)
printf (' \n Value of A= %.f cal',A)
printf (' \n Gibs free energy= %.f cal',G1)
printf (' \n Value of A= %.f cal',A)
