//Chapter 34 Ex 4

clc;
close;
clear;
theta1=(60*%pi)/180; theta2=(30*%pi)/180;   //converted into radian
d1=54;     //given height of temple 1
d2=d1/tan(theta1);    //widht of river
d3=d2*tan(theta2);
d4=d1-d3;     //height of other temple
mprintf("The widht of the river is %.2f meters \n The height of the other temple is %.0f meters", d2,d4);
