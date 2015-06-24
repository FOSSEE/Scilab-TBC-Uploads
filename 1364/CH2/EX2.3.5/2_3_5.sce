clc
//initialisation of variables
F= 100 //tonf
p= 2000 //lbf/in^2
x= 12 //in
x1= 48 //in
p1= 40 //lbf/in^2
//CALCULATIONS
A3= (F/p)*2240
A2= A3*x/x1
A1= A2*p/p1
//RESULTS
printf (' Piston area= %.f in^2',A2)
printf (' \n ram area= %.f in^2',A1)
