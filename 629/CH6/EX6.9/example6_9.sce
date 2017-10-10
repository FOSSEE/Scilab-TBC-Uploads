clear
clc
//Example 6.9 FORCE ON A SLUICE GATE
g=32.2; //[ft/s^2]
d1=20; //[ft]
d2=3; //[ft]
w=20; //gate width[ft]
v2=sqrt((2*g*(d1-d2))/(1-(d2/d1)^2)) //[ft/s]
v1=d2*v2/d1 //[ft/s]
rho=1.94; //[slugs/ft^3]
Q=v2*d2*w //discharge[ft^3/s]
printf("\n The flow rate under the sluice gate = %.f ft^3/s.\n",Q)
m=rho*Q //mass flow rate[slugs/s]
Gamma=62.4; //[lbf/ft^3]
F1=Gamma*w*(d1^2)/2
F2=Gamma*w*(d2^2)/2
//momentum inflow
mi=m*v1 //[lbf]
//momentum outflow
mo=m*v2 //[lbf]
Fx=mo-mi //[lbf]
//Sum of forces in x-direction, Fx=F1-F2-Fg
//1ton=2000 lbf
Fg=(F1-F2-Fx)/2000 //tons
printf("\n The force on the sluice gate = %.1f tons.\n",Fg)