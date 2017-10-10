//Example 7_4
clc();
clear;
//To find out how many revolutions does it turn before rest
wf=0   //units in rev/sec
w0=3    //units in rev/sec
t=18   //units in sec
alpha=(wf-w0)/t    //units in rev/sec^2
theta=(w0*t)+0.5*(alpha*t^2)       //units in rev
printf("Number of revolutions does it turn before rest is theta=%d rev",theta)
