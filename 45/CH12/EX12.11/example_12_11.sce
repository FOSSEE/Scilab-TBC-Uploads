//Example 12.11
clc;
clear;
//bit = input("Specify the converter bit length :")
//fre = input("specify the clock frequency in kHz :")
bit =8;
fre = 500
max_conv_time = 2^bit * (1/(fre*1000));
avg_conv_time = 0.5 *max_conv_time;
max_conv_rate = 1/max_conv_time;
disp("Maximum Conversion Time = ");
disp(max_conv_time);
disp("Average Conversion Time =");
disp(avg_conv_time);
disp("Maximum Conversion Rate =");
disp(max_conv_rate);

