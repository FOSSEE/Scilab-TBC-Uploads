//Example 2_7
clc();   
clear;
//To find tension in the supporting cable and Components of the force exerted by the hinge
F1=50  //units in Newtons
d1=0.7   //units in meters
F2=100   //units  in Newtons
d2=1.4   //units in meters
d3=1   //units in meters
theta2=53   //units in degrees
T=round(((F1*d1)+(F2*d2))/(d3*cos(theta2*%pi/180)))   //units  in Newtons
theta1=37   //units in degrees
H=cos(theta1*%pi/180)*T   //units  in Newtons

V=F1+F2-(cos(theta2*%pi/180)*T)  //units in Newtons
printf("Tension T=%d N\n",T)
printf("H=%d N\n",H)
printf("V=%.2f N",V)
//In text book the answer is printed wrong as H=234N but the correct answer is H=232N
