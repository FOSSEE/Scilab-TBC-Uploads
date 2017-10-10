//Example 15_4
clc();
clear;
//To find the resultant force on 20 micro C
f1=2 //Units in N
f2=1.8     //Units in N
theta=37       //Units in degrees
f2x=f2*cos(theta*%pi/180)      //Units in N
f2y=f2*sin(theta*%pi/180)      //Units in N
fy=f1+f2y     //Units in N
f=sqrt(fy^2+f2x^2) //Units in N
theta=atan(fy/f2x)*180/%pi  //Unitsta in degrees
printf("The resultant force is f=%.1f N \n The resultant angle is theta=%.1f degrees",f,theta)
