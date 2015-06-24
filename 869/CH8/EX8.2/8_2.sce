clc
//initialisation of variables
F= -5000 //lb
D= 250 //lb/ft
y1= 4 //in
y2= 2 //in
y3= 5 //in
y4= 3 //in
x= 3 //in
//CALCULATIONS
Ax= -D*y1
Ay= -F
M= (D*y1*(y2+y3+y1/2))-F*x
//RESULTS
printf ('Ax= %.2f lb',Ax)
printf (' \n Ay=%.2f lb',Ay)
printf (' \n M=%.2f lb.in',M)
