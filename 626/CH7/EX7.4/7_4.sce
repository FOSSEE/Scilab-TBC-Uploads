clear;
clc;
close;
disp("Example 7.4")
W1=300 //in m/s
wrm=0.03
W2min=0.72*W1
Cp=1-(W2min/W1)^2-wrm
disp(W2min,"(a)Minimum W2 in m/s :")
disp(Cp,"(b)Static pressure rise coefficient :")