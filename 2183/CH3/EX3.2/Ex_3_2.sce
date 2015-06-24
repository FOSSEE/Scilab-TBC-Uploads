//Example 3.2 // The loss
clc;
clear;
close;
//given data :
format('v',5)
n1=1.5;
n2=1;
r=((n1-n2)/(n1+n2))^2;
L_f= (-10*log10(1-r));
disp(L_f,"The optical loss at one end,(dB) = ")
Lt=2*L_f;
disp(Lt,"Total loss at both joints,(dB) = ")
