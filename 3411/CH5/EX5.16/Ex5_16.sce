//Example 5_16
clc();
clear;
//To calculate the difference between the samples
d=0.2552
a=d*sqrt(2)
lamda=0.152       //units in nm
theta=21          //units in degrees
//For sample A
d111=lamda/(2*sin(theta*%pi/180))      //units in nm
h=1
k=1
l=1
a=d111*sqrt(h^2+k^2+l^2)            //units in nm
printf("For sample A a=%.4f nm",a)
//For sample B
theta=21.38
d111=lamda/(2*sin(theta*%pi/180))      //units in nm
h=1
k=1
l=1
a=d111*sqrt(h^2+k^2+l^2)            //units in nm
printf("\nFor sample B a=%.4f nm",a)
printf("\n Sample B is pure high purity copper as lattice parameter of A is 1.75percent greater than that of pure copper")
