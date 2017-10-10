//Example 20_1
clc();
clear;
//To findout the time that it has to wait after turning off the set before it is safe to touch capacitor
r=10^6        //Units in Ohms
c=10^-5           //Units in F
ti=r*c         //Units in Sec
printf("We have to wait for a time of t=%d sec",ti)
