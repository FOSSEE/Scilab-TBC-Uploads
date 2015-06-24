//Initilization of variables
W=16.1 //lb
u=0.10 //co-efficient of friction
g=32.2 //ft/s^2
theta=30 //degrees
F=1.39 //lb
//Calculations
//Applying Newtons Second Law
//Using F=1.39 lb
a=(W*sind(theta)-F)/(W/g) //ft/s^2
alpha=(F*0.5*5/2)/((W/g)*(0.5^2)) //rad/s^2
//Result
clc
printf('The value of a is %f ft/s^2 and alpha is %f rad/s^2.\n Hence the sphere will both roll and slip.',a,alpha)
