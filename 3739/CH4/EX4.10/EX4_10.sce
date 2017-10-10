//Chapter 4, Example 4.10, page 159
clc

//Initialisation
g=50                                            //geomagnetic latitude in degree
R12=100                                         //solar activity number
pi=3.14
x=60*pi/180                                //zenith angle in radians

//Calculation
f0=4.35+0.0058*g-0.00012*g**2
f100=5.35+0.011*g-0.00023*g**2
fs=f0+0.01*(f100-f0)*R12
n=0.093+(0.00461*g)-(0.000054*(g**2))+(0.0031*R12)            //The answer provided in the textbook is wrong
F1=fs*(cos(x))**n                              //critical frequency

//Results
printf("Critical Frequency = %.2f MHz",F1)          //The answer provided in the textbook is wrong
