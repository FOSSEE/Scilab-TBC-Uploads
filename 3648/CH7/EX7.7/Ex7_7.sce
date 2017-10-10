//Example 7_7
clc();
clear;
//To calculate how large a horizontal force must the pavement exert
m=1200   //units in Kg
v=8   //units in meters/sec
r=9    //units in meters
F=(m*v^2)/r       //units in Newtons
printf("The horizontal force must the pavement exerts is F=%d Newtons",F)
//In text book the answer is printed wrong as F=8530 N but the correct answer is 8533 N
