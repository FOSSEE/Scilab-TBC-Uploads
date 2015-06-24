//clear//
//Example 1.16:Classification of system:Time Invariance Property
//Page 52
//To check whether the given system is a Time variant (or) Time In-variant
// The given discrete signal is y(t) = x(2t)
clear;
clc;
to = 2; //Assume the amount of time shift  =2
T = 10; //Length of given  signal
x = [1,2,3,4,5,6,7,8,9,10];
y = zeros(1,length(x));
for t = 1:length(x)/2
    y(t) = x(2*t);
end
//First shift the input signal only
Input_shift = x(T-to);
Output_shift = y(T-to);
if(Input_shift == Output_shift)
  disp('The given discrete system is a Time In-variant system');
else
  disp('The given discrete system is a Time Variant system');
end
