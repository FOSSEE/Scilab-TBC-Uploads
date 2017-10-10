//to find thelength of path of contact and the length of arc of contact 
clc
//let module be 1
m=1
t1=28
t2=45
r=t1*m/2
R=t2*m/2
ra=r+m
Ra=R+m
phi1=14.5*%pi/180
//10.8 => AB =(ra^2-r^2*cos(phi)^2)^(1/2)+(Ra^2-R^2*cos(phi)^2)^(1/2)-(r+R)*sin(phi)
//AB=A+B-C
A=m*(ra^2-r^2*cos(phi1)^2)^(1/2)
B=m*(Ra^2-R^2*cos(phi1)^2)^(1/2)
C=m*(r+R)*sin(phi1)
AB=A+B-C
p=%pi*m
ABp=AB/%pi
arc1=ABp/cos(phi1)//length of arc of contact
phi2=20*%pi/180
//10.8 => AB =(ra^2-r^2*cos(phi)^2)^(1/2)+(Ra^2-R^2*cos(phi)^2)^(1/2)-(r+R)*sin(phi)
a=m*(ra^2-r^2*cos(phi2)^2)^(1/2)
b=m*(Ra^2-R^2*cos(phi2)^2)^(1/2)
c=m*(r+R)*sin(phi2)
ab=a+b-c
abp=ab/%pi
arc2=abp/cos(phi2)//length of arc of contact
printf("\nLength of path of contact\nWhen phi = 14.5 degrees = %.3fm\nWhen phi = 20 degrees = %.2fm\nLength of arc of contact\nWhen phi = 14.5 degrees = %.2fp\nWhen phi = 20 degrees = %.3fp\n",AB,ab,arc1,arc2)
