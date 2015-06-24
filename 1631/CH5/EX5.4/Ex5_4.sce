//Caption: signaling rate ,bandwidth
//Example 5.4
//page no 222
//Find signaling rate ,bandwidth
clc;
clear;
N=6;
fm=5000;
r=2*fm;//sampling rate
sr=N*r;//signalingrate
disp("K bits/sec",sr/1000,"Signaling rate");
BW=N*fm;//Bandwith
disp("kHz",BW/1000,"Bandwith to avoid the cross talk in TDM is");
