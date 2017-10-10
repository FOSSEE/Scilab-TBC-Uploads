//Example 22_8
clc();
clear;
//To find the image positon and size
d1=-20    //units in cm
d2=40     //units in cm
i=(d1*d2)/(d2-d1)   //Units in cm
printf("\nThe image is located at i=%.2f cm",i)
d3=3          //units in cm
I=(-i*d3)/d2   //units in cm
printf("\nThe Size of the image is I=%d cm",I)
