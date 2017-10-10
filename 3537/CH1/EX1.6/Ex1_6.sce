//Example 1_6
clc; 
clear;
//find the distance between the slits
lamda=500          //units in nm
lamda=500*10^-9
D=2               //units in mts
f=100
d1=5             //units in cm
d1=5*10^-2         //units in mts
betaa=d1/f        //unitd in mts
//the distance between the slits 
d=(lamda*D)/betaa    //units in mts
d=d*10^3            //units in mm
printf("distance between slits is %dmm",d)