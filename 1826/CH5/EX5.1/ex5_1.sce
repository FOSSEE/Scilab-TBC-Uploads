// Example 5.1, page no-130
clear
clc

a=3.615*10^-10//m
t_ang=0.75 //in degree
h=1
k=1
l=0
d_110=a/sqrt(h^2+k^2+l^2)
D=d_110/tan(t_ang*%pi/(180*2))
printf("The average distance between the dislocations is %.3f A°",D*10^6)
