clear
clc
//initialisation of variables
w= 62.4 //lb/ft^3
A= 18 //ft^2
x= 6 //ft
kg= 6
y= 2 //ft
y1= 5 //ft
//CALCULATIONS
F= w*A*x
F1= F/2
Ft= (F*y-F1*(y1/2))/y1
Fb= F1-Ft
//RESULTS
printf ('Force exerted on the bolt = %.f lb',F1)
printf ('\n Force exerted on the hinge = %.f lb',Ft)
printf ('\n Force exerted on the bolt = %.f lb',Fb)
