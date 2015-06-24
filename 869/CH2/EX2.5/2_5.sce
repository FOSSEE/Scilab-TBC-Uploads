clc
//initialisation of variables
f1= 100 //lb
f2= 200 //lb
x1= 2
x2= -3
y1= 3
y2= 5
z1= 4
z2= -2
//CALCULATIONS
d1= sqrt(x1^2+y1^2+z1^2)
d2= sqrt(x2^2+y2^2+z2^2)
f1x= f1*x1/d1
f1y= f1*y1/d1
f1z= f1*z1/d1
f2x= f2*x2/d2
f2y= f2*y2/d2
f2z= f2*z2/d2
Rx= f1x+f2x
Ry= f1y+f2y
Rz= f1z+f2z
R= sqrt(Rx^2+Ry^2+Rz^3)
I1= Rx/R
I2= Ry/R
I3= Rz/R
//RESULTS
printf ('R = %.2f lb',R)
printf (' \I1=%.3f ',I1)
printf (' \I2=%.3f ',I2)
printf (' \I3=%.3f ',I3)
