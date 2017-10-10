//Example 8_9
clc();
clear;
//To find out the rotational speed 
m=0.3   //units in Kg
r=0.035   //units in meters
Iw=0.5*m*r^2    //units in Kg meter^2
Ibt=8*10^-4    //units in Kg meter^2
w0=2   //units in rev/sec
wf=(Ibt*w0)/(Ibt+Iw)   //units in rev/sec
printf("The rotational speed is Wf=%.2f rev/sec",wf)
