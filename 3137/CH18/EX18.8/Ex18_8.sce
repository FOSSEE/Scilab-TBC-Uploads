//Initilization of variables
W=100 //lb
u=0.2 //coefficient of friction
t=5 //s
v1=5 //ft/s
v2=10 //ft/s
g=32.2 //ft/s^2
ll=0 //lower limit of integration
ul=5 //upper limit of integration
//Calculations
Fr=u*W //lb
//Using The impulse momentum theorem
//Since the integration is just subtraction of limits we can skip that
F=((W/g)*v2-(W/g)*v1+Fr*ul)/ul //lb
//Result
clc
printf('The Force is %f lb',F)
