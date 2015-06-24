//Example 1_8_u1
clc();
clear;
//To calculate the distance from the edge of wedge  
alpha=0.01          //units in radians
n=10
lamda=6000         //units in armstrongs
lamda=lamda*10^-10  //units in mts
x=((2*n-1)*lamda)/(4*alpha)        //units in mts
printf("Distance from the edge of the wedge is %.6fmts",x)
