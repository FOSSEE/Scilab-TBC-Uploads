clc
//initialisation of variables
W= 100 //lb
Frictioncoefficient= 0.40
x= 3
y= 4
//CALCULATIONS
Fmax= (W*y/(sqrt(x^2+y^2)))+Frictioncoefficient*W*x/(sqrt(x^2+y^2))
Fmin=(W*y/(sqrt(x^2+y^2)))-Frictioncoefficient*W*x/(sqrt(x^2+y^2))
 //RESULTS
printf ('Fmin= %.f lb',Fmin)
printf (' \n Fmax=%.f lb',Fmax)
