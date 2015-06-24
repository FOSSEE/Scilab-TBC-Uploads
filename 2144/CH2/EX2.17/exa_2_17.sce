// Example 2.17
clc;
clear;
close;
// Given data
h1= 210;//first heat transfer in kJ
h2= -20;// second heat transfer in kJ
h3= -190;// third heat transfer in kJ
h4= 60;// fourth heat transfer in kJ
W1= -180;// first work transfer in kJ
W2= 200;// second  work transfer in kJ
W3= -300;// third  work transfer in kJ
// Total Heat transfer = Total work transfer
W4= h1+h2+h3+h4-W1-W2-W3;// forth  work transfer in kJ
disp(W4,"Fourth work transfer in kJ is :")
disp("Thus the system delivers "+string(W4)+" kJ of work")
