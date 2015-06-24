clc
//initialisation of variables
F= -100 //lb
x1= 3 //in
y= 6 //in
x2= 24 //in
x3= 12 //in
//CALCULATIONS
Force= -F
Moment= -F*(x2+x1)
Torque= -F*y
//RESULTS
printf ('Force= %.2f lb',Force)
printf (' \n Moment=%.2f lb.in',Moment)
printf (' \n Torque=%.2f lb.in',Torque)
