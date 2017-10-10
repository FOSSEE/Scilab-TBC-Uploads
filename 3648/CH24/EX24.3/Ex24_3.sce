//Example 24_3
clc();
clear;
//To find the thickness that should be coated for minimum reflection
lamda=550       //units in nm
n=1.38          //units in constant
L=(lamda/2)/(2*n)       //units in nm
printf("The thickness that should be coated for minimum reflection is L=%.1f nm",L)
