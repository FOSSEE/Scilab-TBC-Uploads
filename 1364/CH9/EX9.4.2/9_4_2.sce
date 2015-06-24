clc
//initialisation of variables
R1= 9.5 //lbf
f1= 0.01
S1= 22 //ft^2
U1= 5.3
n= 1.825
l= 540//ft
l1= 15 //ft
C= 0.0087//lbf/ft^2
//CALCULATIONS
Rr1= R1-f1*S1*U1^n
U= U1*sqrt(l/l1)
r= (l/l1)^3
Rr= r*Rr1
Rf= C*(l/l1)^2*S1*U^n
R= Rr+Rf
P= R*U*1.69/550
//RESULTS
printf (' propulsive power= %.f h.p',P)
