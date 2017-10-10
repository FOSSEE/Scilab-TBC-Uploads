//Example 7_3
clc();
clear;
//To compare the acceptance angle
NA=0.3
thetaa=asin(NA)*180/%pi  //units in degrees
theta1=asin(NA/sin(45*%pi/180))*180/%pi  //units in degrees
printf("for meridional rays theta=%.2f degrees",thetaa)
printf("\n for skew rays theta=%.2f degrees",theta1)
