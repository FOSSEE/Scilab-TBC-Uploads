//Example 5.9
clc;
clear;
close;

//let
x=[1 2 3 4];
h=[5 6 7];
M=length(x);
N=length(h);

//Result of linear convolution of original sequences
y=conv(x,h);
disp(y,"Result of linear convolution of original sequences is");

L=M+N-1;
//we append zeros such that total sequence will have length 6.
x=[zeros(1:2),x];
h=[h,zeros(1:2)];

//Result of circular convolution of sequence appended with 2 zeros at start
y=conv(x,h);
y(11:12)=0;
y=y(1:6)+y(7:12)
disp(y,"Result of circular convolution of sequences appended with 2 zeros at start is");

disp("We see that if we circularly rotate the result of circular convolution by 2 samples, we get the linear convolution result");
