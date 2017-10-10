//Example 6.1, Page Number 252
//Mode locked Pulses
clc;
lw=1.1*(10**11) //Fluorescent Linewidth in Hertz
l=0.1 //length of laser rod in meter
n=1.8 //Refractive Index
c=3*(10**8) //Speed of light in meters per second

ms=c/(2*l*n) //ms is the mode seperation in hertz
ps=1/ms //ps is the Pulse seperation in seconds
Nm=lw/ms //Nm is the Number of modes oscillating
pd=(1/Nm)*ps //pd is the pulse duration

disp(ms,"The Mode Seperation in Hz is:")
disp(Nm,"The Number of Modes Oscillating is:")
disp(ps,"The Pulse Seperation in s is:")
disp(pd,"The Pulse Duration in s is:")
