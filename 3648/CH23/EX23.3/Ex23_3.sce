//Example 23_3
clc();
clear;
//To find the focal length of the combination
d1=20          //units in cm
d2=-30           //units in cm
d3=60         //units in cm
p1=100/d1       //units in dipoters
p2=100/d2       //units in dipoters
p3=100/d3       //units in dipoters
p=1/(p1+p2+p3)        //Units in diopters
printf("The combined focal length is=%.1f cm",p)
