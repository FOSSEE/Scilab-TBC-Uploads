//Caption: time duration of binary signal
//Example 4.18
//page no 196
//Find  time duration of 1bit  binary encoded signal
clear;
clc;
fs=input("Enter the Nyquist rate of Signal fs(Hz)=");
q=input("Enter the Quantization levels q =");

v=log2(q);//binary pulses transmitted per second
t=1/(v*fs);//Nyquist interval
disp("  sec",t," Time duration of binary signal  t=");
//output
//Enter the Nyquist rate fs(Hz)=3
//Enter the Quantization levels q =5
 
 // time duration of 1bit binary signal   
 
 //   t=0.1435589  sec
 
