

clc
//initialisation of variables
pl= 122.5 // ft
Hw= 1225 //ft
g= 32.2 //ft/sec^2
Cd= 0.98
Cd1= 0.45
N= 500 //r.p.m
P= 6800 //h.p
n= 0.86
w= 62.4 //lb/ft^2
l= 5450 //ft
f= 0.005
A= 18 //ft^2
//CALCULATIONS
Ah= Hw-pl
js= Cd*sqrt(2*g*Ah)
bs= Cd1*js
D= bs*60*2/(N*2*%pi)
a=  P*2*g*550*144/(n*w*js^3*2)
vp= sqrt(pl*2*g/(4*f*l))
dp= (js*2*4*A/(%pi*144*vp))^(2/3)
dp=2.495 //ft
//RESULTS
printf ('diameter of bucket circle D = %.1f ft',D)
printf ('\n area of jet = %.f in^2',a)
printf ('\n diameter of pipe = %.1f ft',dp)
