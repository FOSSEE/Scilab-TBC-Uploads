//Example 13_4
clc();
clear;
//To draw a picture on the first three resonance frequencies
l=6      //Units in meters
n=1
lamda1=(2*l)/n      //Units in meters
n=2
lamda2=(2*l)/n      //Units in meters
n=3
lamda3=(2*l)/n      //Units in meters
speed=24       //Units in meters/sec
f1=speed/lamda1           //Units in Hz
f2=speed/lamda2           //Units in Hz
f3=speed/lamda3           //Units in Hz
printf("The first resonance frequency is F1=%d Hz\n",f1)
printf("The second resonance frequency is F2=%d Hz\n",f2)
printf("The third resonance frequency is F3=%d Hz\n",f3)
