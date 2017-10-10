//Example 5_22
clc();
clear;
//To calculate the interplanar spacing distance
h=1
k=2
l=3
a=0.82   //units in nm
b=0.94    //units in nm
c=0.75    //units in nm
d=((h/a)^2+(k/b)^2+(l/c)^2)^-0.5   //units in nm
printf("Interplanar spacing d=%.3f nm",d)
