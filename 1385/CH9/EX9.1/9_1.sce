clc
//initialisation of variables
c= 0.1 //M
p= 1.34 //per cent
T= 25 //C
//CALCULATIONS
C1= c*p/100
C2= c*p/100
C3= c-C1
Ka= C1*C2/C3
//RESULTS
printf (' ionization constant = %.2e ',Ka)
