//Example 5_2
clc();
clear;
//To show d100:d110:d111=sqrt(6):sqrt(3):sqrt(2)
//For d100
h=1
k=0
l=0
d100=1/sqrt(h^2+k^2+l^2)   //Units in terms of a
//For d110
h=1
k=1
l=0
d110=1/sqrt(h^2+k^2+l^2)   //Units in terms of a
//For d111
h=1
k=1
l=1
d111=1/sqrt(h^2+k^2+l^2)   //Units in terms of a
printf("d100:d110:d111=%.3f:%.3f:%.3f",d100,d110,d111)
