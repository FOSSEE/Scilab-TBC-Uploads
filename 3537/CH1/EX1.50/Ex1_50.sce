//Example 1_50
clc();
clear;
//To find the radius of curvature of the plano convex lens
lamda=6000                 //units in angstroam
lamda=6000*10^-8           //units in cm
m=18
Dm=0.65                   //units in cm
n=8
Dn=0.35                    //units in cm
R=(Dm^2-Dn^2)/(4*lamda*(m-n))
printf("Radius of curvature of the plano convex lens is %.0f cm",R)
