
clc
//initialisation of variables
clear
W1= 1000 //lb
W2= 100 //lb
h= 4 //ft
d= 5 //ft
//CALCULATIONS
V= (W1+W2)/h^3
D= V*h/(d^2*%pi)
I= d^4*%pi/h^3
BM= I/V
x= (BM+(D/2)-(W1*(h/2)/(W1+W2)))/(W2/(W1+W2))-0.02
C= x-h
//RESULTS
printf ('centre of gravity = %.2f ft',x)
printf ('\n Hence the gravity of the weight must not be more than above the top of buoy = %.2f ft',C)
