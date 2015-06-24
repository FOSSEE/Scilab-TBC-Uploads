clc
//initialisation of variables
P= 750 //psi
d= 3 //in
w= 1500 //lb
ga= 0.172
f= 0.12
v= 50 //ft/min
s= 0.75 //in
//CALCULATIONS
Fa= P*%pi*d^2/4
F= w*(ga-f)+Fa
//RESULTS
printf ('total force decessary to decelarate the load= %.f lb',F-2)
