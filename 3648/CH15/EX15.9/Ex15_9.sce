
//Example 15_9
clc();
clear;
//To find the speed just before the field strikes
e=6000   //Units in N/C
q=1.6*10^-19  //Units in C
f=e*q         //Units in N
m=1.67*10^-27        //Units in Kg
a=f/m      //Units in meters/sec^2
vo=0     //Units in meters/sec
x=2*10^-3      //Units in meters
v=sqrt(vo^2+(2*a*x))        //Units in meters/sec
printf("The field goes by a speed of %d meters/sec",v   )
//In text book answer printed wrong as v=48000 meters/sec the correct answer is v=47952 meters/sec 
