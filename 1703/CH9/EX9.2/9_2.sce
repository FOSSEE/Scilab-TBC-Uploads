
clc
//initialisation of variables
v1= 15 //ft/sec
v2= 40 //ft/sec
a= 30 //degrees
b= 150 //degrees
v= 15.27 //ft/sec
g= 32.2 //ft/sec^2
//CALCULATIONS
a1= a-asind(v1*sind(b)/v2)
w= cosd(a1)*v2
vr= v2*sind(a1)/sind(a)
v1= sqrt(v1^2+vr^2-2*v1*vr*cosd(a))
r= 180-asind(sind(a)*vr/v)
w1= v*cosd(r)
W= v1*(w-w1)/g
//RESULTS
printf ('a = %.2f degrees',a1)
printf ('\n w = %.2f ft/sec',w)
printf ('\n vr = %.2f ft/sec',vr)
printf ('\n v1 = %.2f ft/sec',v1)
printf ('\n w = %.2f ft/sec',w)
printf ('\n Work done per pound = %.2f ft-lb/lb',W)
