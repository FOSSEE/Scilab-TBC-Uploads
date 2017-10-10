//Example 1_1
clc();
clear;
//To add the given Displacements Graphically
d1=25   //units in cm
d2=10   //units in cm
d3=30   //units in cm
R=sqrt(d1^2+d2^2+d3^2)  //units in cm
theta1=30   //units in degrees
theta2=90  //units in degrees
theta3=120  //units in degrees
theta=360-(theta1+theta2+theta3)  //units in degrees
printf("The Resultant R=%.2f cm\n",R)
printf("Theta=%d degrees",theta)
//In text book the answer is printed wrong as R=49cm and theta=82 degrees but the correct answer is R=40.31cm and theta=120 degrees
