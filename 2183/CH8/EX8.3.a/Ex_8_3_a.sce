// Example 8.3.a;//bit rate for the system
clc;
clear;
close;
wd=8;//bit wide
ts=32;//time slots
nb=ts*wd;//no. of bits in a frame
nf=8*10^3;//no. of frames
tr=nf*nb;//transmission rate
disp(tr*10^-6,"transmission rate for the system in M-bits-s^-1")
