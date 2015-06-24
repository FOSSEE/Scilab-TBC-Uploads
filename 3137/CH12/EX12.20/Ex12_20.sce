//Initilization of variables
theta=45 //degrees
l=0.5 //m
w=10 //rad/s
//Calculations
//PART a
//Here the theta derivative with respect to time is angular speed w
Vp1=l*(secd(theta)^2)*w //m/s
//Part b
//Radial Component
r=l*secd(theta)*tand(theta)*w //m/s
//Transverse Component
t=l*secd(theta)*w //m/s
//Total 
Vp2=sqrt(r^2+t^2) //m/s
//Result
clc
printf('The velocity is:%fm/s\n',Vp1)
printf('The velocity in part b is %fm/s',Vp2)
