//Chapter 7, Example 7.1, page 293
clc

//Initialisation
h=200                                //height in m
d=30*10**3                           //distance in km
R=40*10**-6                           //height in km
pi=3.14

//Calculation
phi=atan(h*d**-1)               //in radian
phi1=phi*180/pi                 //in degree
n=cos(phi1)
r=round(n)/R                         //radius

//Results
printf("Radius = %.1f km",r)
