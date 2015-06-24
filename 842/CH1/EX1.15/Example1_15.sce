//clear//
//Example 1.15:Classification of a System:Time Invariance Property
//Page 51
//To check whether the given system is a Time variant (or) Time In-variant
// The given discrete signal is y[n] = n.x[n]
clear;
clc;
no = 2; //Assume the amount of time shift  =2
L = 10; //Length of given  signal
for n = 1:L
  x(n) = n;
  y(n) = n*x(n);
end
//First shift the input signal only
Input_shift = x(L-no);
Output_shift = y(L-no);
if(Input_shift == Output_shift)
  disp('The given discrete system is a Time In-variant system');
else
  disp('The given discrete system is a Time Variant system');
end
