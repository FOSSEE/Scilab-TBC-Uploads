//Example 1 //  design loss pass constant K-filter
clc;
clear;
close;
k=600;//ohms
fc=2500;//Hz
l=(k/(%pi*fc));//H
c=((1/(%pi*fc*k)));//farad
disp(l*10^3,"inductance is ,(mH)=")
disp(c*10^6,"capacitance is ,(micro-F)=")
