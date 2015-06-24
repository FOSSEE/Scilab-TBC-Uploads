clc 
//initialisation of variables
v= 100 //ft/sec
u= 40 //ft/sec
a= 25 //degrees
g= 32.2 //ft/sec^2
vr= 66 //ft/sec
a1= 20 ///degrees
a2= 8 //degrees
r= 0.14
//CALCULATIONS
A= atand(v*sind(a)/(v*cosd(a)-u))
A1= atand(r)
v1= vr*sind(A1)/sind(a1)
W= (v^2-v1^2)/(2*g)
e= (v^2-v1^2)*100/v^2
//RESULTS
printf ('inlet blade angle = %.2f degrees',A)
printf ('\n outlet blade angle = %.2f degrees',A1)
printf ('\n Work done = %.f ft lbs',W)
printf ('\n efficiency = %.2f ft per cent',e)
