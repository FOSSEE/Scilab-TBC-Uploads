//Example 1_52
clc();
clear;
//To find diameter of 25th ring
dm=0.62      //units in cm
ds=0.3     //units in cm
d25=2*(dm^2-ds^2)+ds^2      //units in cm^2
d25=sqrt(d25)              //units in cm
printf("Diameter of 25th ring is %.3f cm",d25)
