//Find Eddy current loss at 60 and 100 Hz
//Ex:14.9
clc;
clear;
close;
f=50;//in Hz
L=100;//Eddy current loss in transformer in W
f1=60;//in Hz
w_e=L*(f1/f)^2;//in W
disp(w_e,"Eddy current loss at 60 Hz (in W) = ");
f2=100;//in Hz
w_ee=L*(f2/f)^2;//in W
disp(w_ee,"Eddy current loss at 100 Hz (in W) = ");