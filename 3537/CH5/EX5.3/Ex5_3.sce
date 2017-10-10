//Example 5_3
clc();
clear;
//To determine the interplanar spacing 
a=450   //units in nm
h=2
k=2
l=0
d220=a/sqrt(h^2+k^2+l^2)     //units in nm
printf("Inter planar spacing d220=%.1f nm",d220)
//in text book the answer is printed wrong as 15.1 nm The answer is  159 nm
