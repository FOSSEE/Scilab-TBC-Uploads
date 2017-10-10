//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 3
//example 3.12
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
f=500;                              //frequency at the load side in Hz
t=1/f;                             //time for one cycle in sec
tseg=t/6;                         //time of the switching segment in sec
tcon=3*tseg;                     //conduction period of each transistor in sec
tcon1=tcon*10^3;                //conduction period of each transistor in msec
disp(tcon1,'The conduction period of each transistor in msec is')
