clc
//initialisation of variables
L= 50 //m
k= 0.08e-2//m/sec
h= 4 //m
H1= 3 //m
H= 8 //m
a= 0.139 //radians
//calculations
i= h*cos(a)/L
A= H1*cos(a)
q= k*i*A
//results
printf ('flow rate = % 2f m^3/sec/m ',q)
