clc
//initialisation of variables
Fx1= -15 //lb
Fx2= 55 //lb
Fy1= 70 //lb
Fy2= -40 //lb
x1= 4 //in
x2= 3 //in
x3= 5 //in
y1= 4 //in
y2= 2 //in
//CALCULATIONS
Rx= Fx1+Fx2
Ry= Fy1+Fy2
R= sqrt(Rx^2+Ry^2)
angle= atand(Ry/Rx)
//RESULTS
printf ('R= %.2f lb',R)
printf (' \n angle=%.1f degrees',angle)
