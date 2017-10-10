//Example 7_1
clc();
clear;
//To convert angles to radians and revolutions
theta=70    //units in degrees
deg=360   //units in degrees
rad=theta*2*%pi/deg    //units in radians
rev=1   //units in revolution
rev=theta*rev/deg     //units in revolution
printf("70 degrees in radians is %.2f radians \n 70 degrees in revolutions it is %.3f revolutions",rad,rev)
