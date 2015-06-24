//Initilization of variables
//Here the integration is indefinite hence it will be computed manually and entered
W=10 //lb
l=4 //ft
w=2 //rad/s
g=32.2 //ft/s^2
//Calculations
//Part (a)
wf=1.5 //rad/s
t=sqrt(((W/g)*(l*w*l))-((W/g)*(l*wf*l))) //s
//Part (b)
//Applying conservation of angular momentum
r=((W/g)*l*wf*l)/((W/g)*l*w) //ft
//Result
clc
printf('The answer for part (a) is %f s\n and the answer for part (b) is %f ft',t,r) 
