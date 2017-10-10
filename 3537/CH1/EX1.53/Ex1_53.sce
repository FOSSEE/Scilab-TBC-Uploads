//Example 1_53
clc();
clear;
//To find the radius of the curvature
lamda=5890              //units in angstroam
lamda=5890*10^-8        //units in cm
//diameter of the 15th ring
m=15
Dm=0.590                  //units in cm
//diameter of the 5th ring
n=5
Dn=0.336                  //units in cm
R=(Dm-Dn)/(4*lamda*(m-n))
printf("the radius of the curvature of the convex lens is %.2f cm",R)
