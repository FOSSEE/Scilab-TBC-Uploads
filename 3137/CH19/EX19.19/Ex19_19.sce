//Initilization of variables
F=10 //lb
v=20 //in/s
g=386 //in/s
W=12 //lb
k=20 //lb/in
//Calculations
//Coefficient of damping
c=F/v //lb-s/in
//Natural Frequency
wn=sqrt((k*g)/W) //rad/s
//Critical Damping coefficient
cr=(2*W/g)*wn //lb-s/in
//Damping Coefficient
d=c/cr
//Frequency of damped vibrations
wd=sqrt(1-d^2)*wn //rad/s
//Result
clc
printf('The frequency of damped vibrations is %f rad/s',wd)
