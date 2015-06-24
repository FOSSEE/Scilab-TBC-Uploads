//Calculating average induced emf
//Chapter 2
//Example 2.4
//page 92
clear;
clc;
disp("example 2.4")
P=2         //number of poles
Z=400        //number of conducters
n=300        //speed in rpm
E=200         //voltage of generator
A=2           //number of parallel paths
N=1200        //number of turns in each field coil
phi=(E*60*A)/(Z*n*P)   //flux at the end of 0.15sec
t=0.15                     //time
printf("magnitude of flux at the end of 15sec is %f wb",phi)
e=N*(phi/t)
printf("\ninduced emf in the field coil= %d volts",e)
