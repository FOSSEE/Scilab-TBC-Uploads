// Example 8.3.c //duration of a frame and multiframe
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
df=bdr*10^6*ts;//duration of frame
dmf=df*(ts/2);//ms
disp(df,"duration of frame in micro seconds")
disp(dmf*10^-3,"duration of multiframe in milli seconds")
