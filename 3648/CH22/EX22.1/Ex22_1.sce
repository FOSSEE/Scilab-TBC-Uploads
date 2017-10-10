//Example 22_1
clc();
clear;
//To find the position and size of the image
d1=5    //units in cm
d2=30     //units in cm
i=(d1*d2)/(d2-d1)   //Units in cm
d3=2           //units in cm
I=(i/d2)*d3      //units in cm
printf("The position of the image is i=%d cm\nThe Size of the image is I=%.2f cm High",i,I)       
