//Example 2_8
clc();   
clear;
//To find the tension in the Muscle and the Component Forces at elbow
F1=65   //units in Newtons
d1=0.1  //units in Meters
F2=20   //Units in Newtons
d2=0.35   //units in meters
theta1=20   //units in degrees
d3=0.035   //units in Meters
Tm=((F1*d1)+(F2*d2))/(cos(theta1*%pi/180)*d3)   //units in Newtons
V=F1+F2-(Tm*cos(theta1*%pi/180))
H=Tm*sin(theta1*%pi/180)
printf("Tension T=%d N\n",Tm)
printf("H=%d N\n",H)
printf("V=%d N",V)
