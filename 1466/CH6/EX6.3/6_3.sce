

clc
//initialisation of variables
clear
V= 80 //ft/sec
v= 40 //ft/sec
a= 30 //degrees
b= 20 //degrees
g= 32.2 //ft/sec^2
//CALCULATIONS
O= atand(V*sind(a)/(V*cosd(a)-v))
Vr= v/sind(O)
V1= Vr*sind(b/5)/sind(b)
W= v*(V*cosd(a)+V1*cosd(a))/g
e= W*2*g*100/V^2
//RESULTS
printf (' Velocity = %.2f ft/sec',V1+0.01)
printf (' \n Work done = %.1f ft-lb/sec',W+1)
printf (' \n Efficiency = %.1f per cent',e+1)
