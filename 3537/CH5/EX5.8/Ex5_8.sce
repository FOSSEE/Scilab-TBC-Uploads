//Example 5_8
clc();
clear;
//To find lattice parameter
n=1
lamda=0.58 //units in A
theta=9.5  //units in degrees
a=(n*lamda)/(2*sin(theta*%pi/180))
printf("lattice parametera=%.3fA",a)
//In text book answer printed wrong as 3.52A correct answer is 1.75A
