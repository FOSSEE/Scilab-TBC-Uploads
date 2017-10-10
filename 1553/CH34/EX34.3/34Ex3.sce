//Chapter 34 Ex 3

clc;
clear;
close;
theta1=(60*%pi)/180; theta2=(30*%pi)/180;   //converted into radian
//forming the equations from given condition and solving them we get (h/tan(theta2))-(h/tan(theta1))=24 and solving we get
h=24/((1/tan(theta2))-(1/tan(theta1)));
mprintf("The height of the tower is %.2f meters",h);
