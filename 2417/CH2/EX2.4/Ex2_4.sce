clear;
clc;
printf("\t\t\tProblem Number 2.4\n\n\n");
// Chapter 2: Work, Energy, and Heat
// Problem 2.4 (page no. 66) 
// Solution

//Given
Z=600; //Unit:ft //Z=The distance,the body is raised from its initial position when the force is applied
gc=32.174; //Unit: (lbm*ft)/(lbf*s^2) //gc is constant of proportionality
g=gc; //Unit:ft/s^2 //g=The local gravity
m=1; //Unit:lbm //m=mass
PE=(m*g*Z)/gc; //potential energy //Unit:ft*lbf
printf("%f ft*lbf work is done lifting the water to elevation ",PE)
