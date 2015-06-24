// Example 2.14
clc;
clear;
close;
// Given data
format('v',6);
Vpp= 3;// output voltage in V
del_t= 4;// in µs
del_V= 90*Vpp/100-10*Vpp/100;// in V
// Required slew rate,
SR= del_V/del_t;// in V/µs
disp(SR,"The required slew rate in V/µs is : ");





