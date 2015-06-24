//Exa 5.4
clc;
clear;
close;
//Given data :
BW=200;//in kHz
A=40;//gain without feedback(in dB)
Beta=5;//negative feedback in %
Beta=Beta/100;//feedback factor
//Formula : Af=A/(1+A*Beta)
Af=A/(1+A*Beta);//gain with feedback(in dB)
disp("Since gain bandwidth product remains constant, A*BW=Af*BW_dash");
BW_dash=A*BW/Af;//in kHz
disp(BW_dash,"New Bandwidth in kHz : ");