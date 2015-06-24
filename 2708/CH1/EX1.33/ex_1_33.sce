//Example 1.33 // diameter of ring
clc
clear;
//given data :
n1=4;//order of ring
n2=12;// order of ring
m=n2-n1;//difference of ring order
n=20;// order of ring to find
//let k=4*wavelength**R
d1=.4;// diameter of first ring in cm
d2=.7;//diameter of second ring in cm
k=(d2^2-d1^2)/m;
d=sqrt(n*k);// diameter of ring in cm
disp(d,"diameter of ring in cm")

//note: Wrong answer in the textbook.






