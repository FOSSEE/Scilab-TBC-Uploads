//Example1.7
clc();
clear;
//To calculate the fring width
//betaa=(lamda)/(2*alpha)
lamda=6000         //units in armstrongs
lamda=lamda*10^-8   //units in cm
diameter=0.05         //units in mm
distance=15            //units in cm
alpha=(diameter/distance)*10^-1     //units in radians
betaa=lamda/(2*alpha)            //units in cm
printf("The fringe width is %.2fcm",betaa)
