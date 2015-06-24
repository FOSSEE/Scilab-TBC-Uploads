clc
//initialisation of variables
d= 0.5 //in
n= 315 //rpm
t1= 5000 //psi
r1= 8 //in
r2= 4 //in 
n1= 6
n2= 4
//CALCULATIONS
t2= r2*t1/r1
T= r1*n1*(%pi/4)*d^2*t1+r2*n2*(%pi/4)*d^2*t2
hp= T*n/63000
//RESULTS
printf ('Premissible horsepower= %.f hp',hp)
