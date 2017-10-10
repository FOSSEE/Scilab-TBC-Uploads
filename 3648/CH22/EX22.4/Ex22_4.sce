//Example 22_4
clc();
clear;
//To find the angle at which the light emerge in to the air
theta=37      //Units in degrees
n1=1.33     //Units in constant
n2=1     //Units in constant
thetaa=asin((n1*sin(theta*%pi/180))/n2)*180/%pi          //units in degrees
printf("The angle at which the light emerges in air is theta=%d degrees",thetaa) 
