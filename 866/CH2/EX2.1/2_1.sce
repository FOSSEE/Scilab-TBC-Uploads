clc
//initialisation of variables
F1= -2.0 //KN
F2= 3.0 //KN
F3= -6.0 //KN
F4= -1.0 //KN
x1= 0 //m
x2= 0.6 //m
x3= 0.9 //m
x4= 1.2 //m
//CALCULATIONS
R= -(F1+F2+F3+F4)
x= -(x1*F1+x2*F2+x3*F3+x4*F4)/R
//RESULTS
printf ('R= %.2f kN',R)
printf (' \n x=%.2f m',x)

