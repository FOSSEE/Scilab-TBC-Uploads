clc
//initialisation of variables
W= 2.5 //KN/m
n= 8
x= 1.4 //m
y= 1.4 //m
l= 4 //m
x1= 2.5
x2= 3.2
x3= 0.25
x4= 0.3125
x5= 0.625
x6= 0.5
x7= 3.5
a= 45 //degrees
//CALCULATIONS
Fec= x1*x2*x3*(1/2)/sind(a)
Scd= W*(0.5*(x4+x5)*x6+0.5*(x5+x4)*x7)
Fec1= Scd/sind(a)
//RESULTS
printf ('Maximum compressive force= %.2f KN',Fec)
printf (' \n Maximum tensile force= %.2f KN',Fec1)
