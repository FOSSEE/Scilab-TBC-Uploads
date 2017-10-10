
//Example 22_3
clc();
clear;
//To find the location of the image and its relative size
r=100            //Units in cm
d1=-r/2    //units in cm
d2=75     //units in cm
i=(d1*d2)/(d2-d1)   //Units in cm
p=75    //units in cm
sizee=-i/p           //units in cm
printf("The location of the image is i=%d cm\n The relative size of the image is I_O=%.2f cm",i,sizee)
