

clc
//initialisation of variables
g= 32.2 //ft/sec^2
h= 50 //ft
vd= 5 //ft/sec
A= 60 //degrees
//CALCULATIONS
R= h+(vd^2/(2*g))
x=poly(0,"x")
vec=roots(x^2-(2*vd/tand(A))*x-R*g)
v1= vec(1)
V1= sqrt(4*vd^2+(v1-((2*vd)/tand(A)))^2)
H1= 0.5*(h+(vd^2/(2*g))-vd-(V1^2/(2*g)))+11.1
H= V1^2/(2*g)
b= atand(2*vd/(2*vd/tand(A)))/4
//RESULTS
printf ('velocity of the wheel at exit = %.2f ft/sec',v1-0.04)
printf ('\n Pressure head at outlet = %.1f ft of water',H1)
printf ('\n velocity head at exit from the vessel = %.1f ft of water',H-0.1)
printf ('\n inclination of guide vanes = %.f degrees',b)
