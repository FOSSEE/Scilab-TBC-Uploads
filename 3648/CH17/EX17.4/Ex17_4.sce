//Example 17_4
clc();
clear;
//To find the appropriate resistance of the wire
alpha=0.0045        //Units in Centigrade^-1
t=1780          //Units in Centigrade
deltaR=240     //Units in Ohms
ro=deltaR/(1+(alpha*t))     //Units in ohms
printf("The appropriate resistance in wire is Ro=%.1f Ohms",ro)
