//Example 1_14
clc();
clear;
//To calculate the distance from the fringe
n=10
lamda=6000*10^-10 //units in mts
alpha=0.01
x=(((2*n)-1)*lamda)/(4*alpha)  //units in mts
printf("Distance from 10th fringe is %.6f mts",x)
