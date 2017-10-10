//Example 5_16_u1
clc();
clear;
//To calculate the difference between the samples
d=0.2552       //units in nm
a=d*sqrt(2)       //units in nm
lamda=0.152       //units in nm
theta=21          //units in degrees
//For sample A
d111=lamda/(2*sin(theta*%pi/180))      //units in nm
h=1
k=1
l=1
a1=d111*sqrt(h^2+k^2+l^2)            //units in nm
printf("For sample A a=%.4f nm",a1)
//For sample B
theta=21.38          //units in degrees
d111=lamda/(2*sin(theta*%pi/180))      //units in nm
h=1
k=1
l=1
a2=d111*sqrt(h^2+k^2+l^2)            //units in nm
change=((a1-a2)/a2)*100
printf("\nFor sample B a=%.4f nm",a2)
printf("\n Sample B is pure high purity copper as lattice parameter of A is %.2f percent greater than that of pure copper",change)
//Given in text book change in lattice parameter is 1.75% greater  but it is 1.73%
