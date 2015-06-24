//Caption: spacing  distance
//Example 5.3
//page no 221
//Find The spacing between two successive pules
clc;
clear;
samplingrate=8000;
totalsignals=24+1;
t=1/samplingrate;
T=t/totalsignals;
T=T*10^6//time is now u sec
space=T-1;
disp("u sec",space,"The spacing between two successive pules");
