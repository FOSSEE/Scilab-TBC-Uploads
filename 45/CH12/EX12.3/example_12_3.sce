//Example 12.3
clc;
clear;
for i=1:5 
    op_v(1,i)= 10/2^i; // calculating otput voltages corresponding to each bit 
end
disp("output voltages corresponding to each bit are ") //displaying result
disp(op_v);