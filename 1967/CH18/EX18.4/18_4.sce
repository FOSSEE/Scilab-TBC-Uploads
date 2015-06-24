clc
//initialisation of variables
clear
n1= 1 //mole
n2= 400 //mole
H1= 5638 //cal
H2= 23540 //cal
L= -1.54 //cal/mole
l1= -2.16 //cal/mole
l2= 5842 //cal/mole
//CALCULATIONS
Q1= n2*L+H1+H2
Q2= n2*l1+2*l2
Q= Q2-Q1
//RESULTS
printf ('Heat change = %.f cal',Q)
