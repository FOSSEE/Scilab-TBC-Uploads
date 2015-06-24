clc
//initialization of the problems
clear
s=1.6 //m
s1=4 //m
pi=28 //degrees
w=16 //kg/m^2
p=100 //kg/m^2
pl=20 //cm
pb=10 //cm
r=500 //kg/m^3
Zx=54.8 //cm^3
Zy=3.9 //cm^3
// calculations
pi=pi*%pi/180 //radians
W=w*s+8.1
P=p*s
L=P+W*cos(pi)
Mx=L*s1^2*100/8
sigma_1=Mx/Zx
My=W*sin(pi)*s1^2*100/8
sigma_2=My/Zy
sigma=sigma_1+sigma_2
// results
printf('Maximum stresses are %d kg/cm^2, tension or compression',sigma)
