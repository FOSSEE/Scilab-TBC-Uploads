// Example 8.3.b //duration of time slot
clc;
clear;
close;
wd=8;//bit wide
ts=32;//time slots
nb=ts*wd;//no. of bits in a frame
nf=8*10^3;//no. of frames
tr=nf*nb;//transmission rate
bdr1=1/tr;//bit duration
bdr=bdr1*wd;//
disp(bdr*10^6,"duration of time slot in micro seconds")
