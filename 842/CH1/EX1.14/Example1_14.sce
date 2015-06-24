//clear//
//Example 1.14:classification of a system:Time Invariance Property
//Page 51
//To check whether the given system is a Time variant (or) Time In-variant
// The given discrete signal is y(t) = sin(x(t))
clear;
clc;
to = 2; //Assume the amount of time shift  =2
T = 10; //Length of given  signal
for t = 1:T
  x(t) = (2*%pi/T)*t;
  y(t) = sin(x(t));
end
//First shift the input signal only
Input_shift = sin(x(T-to));
Output_shift = y(T-to);
if(Input_shift == Output_shift)
  disp('The given discrete system is a Time In-variant system');
else
  disp('The given discrete system is a Time Variant system');
end
