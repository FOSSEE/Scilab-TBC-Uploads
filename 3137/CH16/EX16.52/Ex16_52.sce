//Initilization of variables
W=32.2 //lb
T=120 //lb
m=1 //slug
r=6/12 //ft
//Calculations
w=sqrt((T*(3/5)*4)/(m*r*3)) //rad/s
//Result
clc
printf('The angular speed permissible is %f rad/s',w)
