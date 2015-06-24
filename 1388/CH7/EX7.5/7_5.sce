clc
//initialisation of variables
x= 0.033 //cm
t= 38.2 //sec
e= 3.2 //v
V= 9*10^-3 //dyne sec cm^-2
k= 78
//CALCULATIONS
v= x/t
u= v/e
S= -300^2*u*V*4*%pi/k
//RESULTS
printf (' electrokinetic potential = %.3f volt ',S)
