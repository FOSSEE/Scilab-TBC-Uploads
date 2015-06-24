//Example 2_3_u1
clc();
clear;
//To calculate minimum no of lines per centimeter
lamda1=5890       //units in armstrongs
lamda2=5896       //units in armstrongs
dlamda=lamda2-lamda1       //units in armstrongs
k=2
n=lamda1/(k*dlamda)
width=2.5        //units in cm
nooflines=n/width
printf("No of lines per cm=%.1f",nooflines)
