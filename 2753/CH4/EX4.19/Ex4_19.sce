//Example 4.19: 
clc;
clear;
close;
//given data :
format('v',5)
Bw=200;//bandwidth in kHz
vg=40;//dB
fb=5;//percentage negetive feedback
A=40;//gain without feedback
Beta=fb/100;//feed back ratio
Af=(A/(1+(Beta*A)));//gain with feedback
Bwf= (A*Bw)/Af;//Bandwidth with feedback
disp(Bwf," new band-width is ,(kHz)=")

