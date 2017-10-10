//Example 14_6
clc();
clear;
//To find the difference between the frequency of wave reaching the officer and the car
fo=10^10     //Units in Hz
vw=3*10^8      //Units in meters/sec
vc=25   //Units in meters/sec
f1=fo*((vw+vc)/(vw-vc))       //Units in Hz
f1=f1-10^10       //Units in Hertz
printf("The difference between the both frequencies is=%d Hz",f1)
//In text book answer printed wrong as 1670 Hz correct answer is 1666 Hz
