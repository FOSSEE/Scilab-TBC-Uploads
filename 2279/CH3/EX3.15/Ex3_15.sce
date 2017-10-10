//Example 3.15
clear;
clc;
to = 2; //Assume the amount of time shift  =2
T=10;
for t = 1:0.01:T
  x(t) = sin(t);
  y(t) = sin(2*t);
end
//First shift the input signal only
Input_shift = x(T-to);
Output_shift = y(T-to);
if(Input_shift == Output_shift)
  disp('The given system is a Time In-variant system');
else
  disp('The given system is a Time Variant system');
end
