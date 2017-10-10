//Example 1_2
clc();
clear;
// To add the given vector displacements
a=1  //units in meters
b=3  //units in meters
c=5  //units in meters
d=6  //units in meters
theta1=90  //units in degrees
Rx_a=a*sin(theta1*%pi/180)   //units in meters
Rx_b=round(b*cos(theta1*%pi/180)) //units in meters
theta2=37   //units in degrees
Rx_c=-round(c*cos(theta2*%pi/180))     //units in meters
theta3=53  //units in degrees
Rx_d=-d*cos(theta3*%pi/180)
Ry_a=round(a*cos(theta1*%pi/180))   //units in meters
Ry_b=round(c*sin(theta2*%pi/180)) //units in meters
Ry_c=round(c*sin(theta2*%pi/180)) //units in meters
Ry_d=-(d*sin(theta3*%pi/180)) //units in meters
Rx=Rx_a+Rx_b+Rx_c+Rx_d     //units in meters
Ry=Ry_a+Ry_b+Ry_c+Ry_d     //units in meters
R=sqrt(Rx^2+Ry^2)  //units in meters
phi=round(atan(Ry/-(Rx))*180/%pi)    //units in degrees
phi=180-phi   //units in degrees
printf("The Resultant R=%.2f Meters\n",R)
printf("The Angle theta=%d degrees",phi)
