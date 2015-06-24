clc
//Intitalisation of variables
clear
w= 2540 //A
v= 10 //ml
c= 0.0495 //M
a= 8.81*10^8 //ergs
c1= 0.0383 //M
n= 1.12*10^-4 //moles
n1= 2.859 //moles
//CALCULATIONS
qy= n*n1*4.184*10^15/(a*w)
//RESULTS
printf ('Quantum yield = %.3f ',qy)
