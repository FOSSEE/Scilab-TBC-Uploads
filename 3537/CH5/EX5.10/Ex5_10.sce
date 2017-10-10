//Example 5_10
clc();
clear;
//To determine interplanar spacing andmiller indices
n=1
lamda=1.54   //Units in A
theta=20.3   //units in degrees
d=(n*lamda)/(2*sin(theta*%pi/180)) //units in A
printf("Interplanar spacing d=%d A\n",d)
a=3.16
hkl=a/d
hkl2=hkl^2
printf("In order to get h^2+k^2+l^2=%d as l=0 then h=1 and k=1",hkl2)
