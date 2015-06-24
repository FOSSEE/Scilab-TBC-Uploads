


clc
//initialisation of variables
clear
x= 32 //ft
h= 60 //ft
w= 62.4 //lb/ft^3
AE= 20 //ft
//CALCULATIONS
Vabc= 2*x*h/3
vc= Vabc*w
Tab= w*h^2/2
Rt= sqrt(vc^2+Tab^2)/2240
A= atand(vc/Tab)
AD= x-AE+AE*cotd(A)
//RESULTS
printf("resultant thrust = %.1f tons",Rt)
printf("\n Angle = %.2f degrees",A)
printf ('\n AD = %.1f ft ',AD)
