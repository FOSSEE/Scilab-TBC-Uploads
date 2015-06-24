clc
//initialisation of variables
sigma= 20000 //psi
b= 6 //in
h= 0.5 //in
p1= 3750
//CALCULATIONS
P= sigma*b*h
L= (P-p1*b)/(2*p1)
//RESULTS
printf ('L= %.2f in',L)
