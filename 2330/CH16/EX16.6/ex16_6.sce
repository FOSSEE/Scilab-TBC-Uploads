// Example 16.6
format('v',6)
clc;
clear;
close;
// given data
f_unity= 1*10^6;// in Hz
// For A_CL= 1000, The value of f_CL
A_CL= 1000;
f_CL= f_unity/A_CL;// in Hz
f_CL= f_CL*10^-3;// in kHz
disp(f_CL,"For A_CL= 1000, The value of f_CL in kHz is : ")
// For A_CL= 100, The value of f_CL
A_CL= 100;
f_CL= f_unity/A_CL;// in Hz
f_CL= f_CL*10^-3;// in kHz
disp(f_CL,"For A_CL= 100, The value of f_CL in kHz is : ")
// For A_CL= 10, The value of f_CL
A_CL= 10;
f_CL= f_unity/A_CL;// in Hz
f_CL= f_CL*10^-3;// in kHz
disp(f_CL,"For A_CL= 10, The value of f_CL in kHz is : ")
// For A_CL= 1, The value of f_CL
A_CL= 1;
f_CL= f_unity/A_CL;// in Hz
f_CL= f_CL*10^-6;// in MHz
disp(f_CL,"For A_CL= 1, The value of f_CL in MHz is : ")
