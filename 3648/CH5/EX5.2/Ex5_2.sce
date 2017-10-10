//Example 5_2
clc();
clear;
//To calculate the work done when lifting object as well as lowering the object
Fs=1   //units in terms of Fs
theta=0   //units in degrees
W=Fs*cos(theta*%pi/180)   //units in terms of m, g and h
printf("Work done when lifting is W=mgh*%d\n",W)
theta=180   //units in degrees
W=Fs*cos(theta*%pi/180)   //units in terms of m, g and h
printf("Work done when downing is W=mgh*%d\n",W)
