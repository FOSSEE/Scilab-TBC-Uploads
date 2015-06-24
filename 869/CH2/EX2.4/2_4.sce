clc
//initialisation of variables
fx= 100 //lb
f1= 200 //lb
f2= 100 //lb
f3= 50 //lb
a1= 30 //degrees
a2= 45 //degrees
a3= 60 //degrees
//CALCULATIONS
Rx= fx+f1*cosd(a1)-f2*cosd(a2)-f3*cosd(a3)
Ry= f1*sind(a1)+f2*sind(a2)-f3*sind(a3)
R= sqrt(Rx^2+Ry^2)
angle= atand(Ry/Rx)
//RESULTS
printf ('R = %.f ',R)
printf (' \angle=%.1f degrees',angle)
