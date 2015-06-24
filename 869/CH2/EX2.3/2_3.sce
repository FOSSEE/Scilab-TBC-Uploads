clc
//initialisation of variables
f1= 20 //lb
f2= 40 //lb
alpha= 30 //degrees
//CALCULATIONS
R= sqrt(f1^2+f2^2+2*f1*f2*cosd(alpha))
angle= asind((f2*sind(180-alpha))/(R))
//RESULTS
printf ('R = %.1f lb',R)
printf (' \angle=%.1f degrees',angle)
