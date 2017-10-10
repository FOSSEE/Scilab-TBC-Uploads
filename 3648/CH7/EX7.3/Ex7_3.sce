//Example 7_3
clc();
clear;
//To find average angular acceleration
wf=240   //units in rev/sec
w0=0    //units in rev/sec
t=2   //units in minutes
t=t*60   //units in sec
alpha=(wf-w0)/t    //units in rev/sec^2
printf("Average angular acceleration is alpha=%d rev/sec^2",alpha)
