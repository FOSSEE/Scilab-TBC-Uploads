// Example 2.15:diameter
clc;
clear;
close;
mfd=11.6;//in micro meter
a=mfd/2;//in micro meters
v=2.2;//
alpha=((a*10^-6)/(0.65+1.619*sqrt(v)+2.879*((v)^-6)));//
disp(2*alpha*10^6,"core diameter in micro meter ")
//answer is wrong in the textbook
