//Example 16.10.
clc
format(6)
f=1/(1.386*(20*10^3)*(1000*10^-12))  //in Hz
x1=f*10^-3  // in kHz
disp("The frequency of a symmetrical astable multivibrator is")
disp(x1,"      f(kHz) = 1/1.386RC =")  // answer in textbook is wrong