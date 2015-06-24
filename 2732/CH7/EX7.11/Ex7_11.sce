clc
//initialization of variables
clear
t=0.5 //cm
s=2 //m
p1=7.5 //cm
p2=10 //cm
d=p2/2
str=1650 //kg/cm^2
// calculations
// ab
IxX=p1*t^3/12+t*p1*d^2
// bc
alpha=atan(3/4)
Ixx=t*(p1+d)^3/12
Iyy=0
Ixy=0
Iuu=Ixx*cos(alpha)^2+Iyy*sin(alpha)^2-Ixy*sin(2*alpha)
Ixx=Iuu+IxX
IXX=Ixx*100/(2*p1)
Z=IXX/(d+t/2)
w=str*Z*8/(s^2*100)
w=w/1000
//Results
printf('w = %.1f tonne/m',w)
