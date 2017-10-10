//Example 7.8
//Time scaling an oscillator.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
// State space model of an oscillator
wn=15000 // rad/sec
F=[0 1;wn^2 0];
G=[0;10^6];
disp(G,"G",F,"F","Given system");

//------------------------------------------------------------------
// State space model of the time-scaled system for 
// a millisecond scale w0=1e3;
w0=1e3; //rad/sec
F1=F/w0;
G1=G/w0;
disp(G1,"G1",F1,"F1","Time scaled system in mm");
//------------------------------------------------------------------
