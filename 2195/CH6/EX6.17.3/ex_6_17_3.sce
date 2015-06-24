//Example 6.17.3 //  Accuracy
clc;
clear;
close;
//given data :
format('v',9)
f=400;//Hz
time_accuracy=10^-8;//sec
display_accuracy=1;//(+ve or -Ve)
t=10;//sec
period=1/f ;//ms
Accuracy= 1+((period*10^3)/10);//ms
disp(Accuracy,"accuracy in ms (±)")
