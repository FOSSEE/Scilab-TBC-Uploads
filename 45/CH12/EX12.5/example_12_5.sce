//Example 12.5
clc;
clear;
ful_scale_voltage = 0 ;
for i=1:5 
    op_v(1,i)= 10/2^i;
    ful_scale_voltage = ful_scale_voltage + op_v(1,i); // calculating the full scale voltage 
end
disp("full scale output voltage in volts is =");
disp(ful_scale_voltage)
