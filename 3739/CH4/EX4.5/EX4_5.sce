//Chapter 4, Example 4.5, page 138
clc
//Initialisation
d=1000                                          //distance in km
re=6370                                         //earth radius in km
dt=30                                           //in degree
pi=3.14

//Calculation
teta=d*(2*re)**-1                               //theta in radians
tet=teta*180*pi**-1                       //theta in degree
w1=90-dt-tet
a=sin(w1*3.14/180)/re
a1=sin((90+dt)*3.14/180)
h=(a1*a**-1)-re                                  //height

//Results
printf("(1) virtual height of the reflection point = %d km",h)           //The answer provided in the textbook is wrong
