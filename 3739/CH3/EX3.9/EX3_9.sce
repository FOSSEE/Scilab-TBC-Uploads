//Chapter 3, Example 3.9, page 89
clc
//Initialisation
rh=-1
s=4                                    //sigma in S/m
f=5*10**9                              //frequency in Hz
eo=8.85*10**-12                        //permitivity of free space
er=75                                  //permitivity of medium
w1=30*3.14*180**-1                     //in radians
pi=3.14


//Calculation
w=2*pi*f
x=s*(w*eo)**-1
a=sin(w1)-sqrt((er-x)-cos(w1)**2)
a1=sin(w1)+sqrt((er-x)-cos(w1)**2)
rh1=a/a1
b1=(er-x)*sin(w1)-sqrt((er-x)-cos(w1)**2)
b2=(er-x)*sin(w1)+sqrt((er-x)-cos(w1)**2)
rv=-b1/b2


//Results
printf("(2) X = %.1f",x)
printf("\n(3) Rh = %.3f",rh1)
printf("\n    Rv = %.1f",rv)
