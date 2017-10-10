//to find force that must be exerted in oeder to give an acceleration of 3ft/s^2 and smallest value of u(friction coefficient)
//gravitaional force (g)=32.2 ft/s^2
clc
printf("\n")
//given
m=10//ton
m2=1000//lb
a=3//ft/s^2
//the addition to actual mass in order to allow for the rotational inertia of the wheels and axles
m1=2*(1000/2240)*(15/21)^2//m1=m2*k^2/r^2 and 1 ton=2240 lbs
M=m+m1
F=3*(10.46/32.2)//F=M.a
f=F*2240//lb
Fa=(2*1000/2240)*(3/32.2)*(15/21)^2//total tangential force required in order to provide the angular acceleration of the wheels and axles
//Limiting friction force =uW 
//u*10>0.042
u=0.042/10
printf("The total tangential force required in order to provide the angular acceleration of the wheels and axles is %.4f ton\n",Fa)
printf("If there is to be pure rolling ,u>%.4f",u)

