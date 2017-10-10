//Example 4_10
clc();
clear;
//To calculate the percentage of volume 
r1=1.258                            //units in meters
r2=1.292                           //units in meters
v1=((4*r1)/sqrt(3))^3/2
v2=(2*sqrt(2)*1.292)^3/4
v=(v1-v2)/v2*100
printf("The percentage of volume changed during this structural change is %.3f",v)
