clear
clc
//initialisation of variables
h= 80 //ft
f= 0.008
l= 3000 //ft
r1= 6.07
r2= 377.5
r3= 4733 
r4= 0.0466
r5= 3220
r6= 51.5
//CALCULATIONS
Q= sqrt(h*10/(f*l))
Q1= sqrt(r2+sqrt(r2^2-4*r1*r3)/(2*r1))/3
Q2= Q1-r4*sqrt(r5-r6*Q1^2)
//RESULTS
printf ('rate discharge when valve B is closed= %.2f cusecs',Q)
printf ('\n Flow in reservoir= %.2f cusecs',Q2)

//The answer is a bit different due to rounding off error in textbook
