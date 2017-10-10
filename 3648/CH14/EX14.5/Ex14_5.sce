//Example 14_5
clc();
clear;
//To find the frequency heard and the receding
f=500  //Units in Hz
vw=340     //Units in meters/sec
dist=20    //Units in meters/sec
f1=f*(vw/(vw-dist))  //Units in Hz
printf("The frequency we hear is f=%d Hz\n",f1)
f1=f*(vw/(vw+dist))  //Units in Hz
printf("The frequency of the receding is f=%d Hz\n",f1)
