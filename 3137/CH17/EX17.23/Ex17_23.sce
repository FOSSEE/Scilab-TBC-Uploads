//Initilization of variables
m=90 //kg
k=450 //N/m
lo=0.6 //m
r=0.15 //m
x=0.9 //m
y=0.4 //m
//Calculations
//Initial KE=0
I=0.5*m*r^2 //kg.m^2
s1=sqrt((lo^2)+(x^2)) //m
s2=sqrt((lo^2)+(y^2)) //m
V1=0.5*k*(s1-lo)^2 //N.m
V2=0.5*k*(s2-lo)^2 //N.m
//Applying Conservation of Energy 
w=sqrt((V1-V2)/(0.5*m*r^2+0.5*I)) //rad/s
//Result
clc
printf('The value of  angular speed is: %f rad/s',w)
