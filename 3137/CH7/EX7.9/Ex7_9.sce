//Initilization of variables
//The variable decleration is taken to simplify the solution
x1=10 //m
x2=20 //m
m=3 //kg/m
g=9.8 //m/s^2
//For simplicity a1 and a2 values are being considered as constant free of H
a_1=sqrt(x1/(m*g*0.5))
a_2=sqrt((x1+x2)/(m*g*0.5))
y=10 //m
//Calculations
H=(300/(a_1+a_2))^2 //N
//Now reconsidering a1 and a2 actual values
a1=a_1*sqrt(H) //m
a2=a_2*sqrt(H) //m
//Theta calculations
x=a1
theta=atand(2*y/x)
//T calculations
T=sqrt((864*a2^2)+H^2) //N
//result
clc
printf('The tension in the cable is %fN',T)
