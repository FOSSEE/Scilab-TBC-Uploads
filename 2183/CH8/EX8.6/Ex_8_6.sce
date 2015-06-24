// Example 8.6;//total channel loss
clc;
clear;
close;
afc=5;//attenuation in dB/km
aj=2;//splice loss in dB/km
l=5;//length in km
ac=3;//dB
ac1=4.5;//dB
cl=(afc+aj)*l+ac+ac1;//dB
disp(cl,"tota channel loss in dB is")
