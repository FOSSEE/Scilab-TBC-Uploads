// Example 2.13 :reading
clc;
close;
format('v',8)
clear;
// given :
v1=230;//voltage in volts
v2=100;//voltage in volts
v2=sqrt(v1^2-v2^2);//voltage in volts
v3=300;//voltage in volts
disp(v2,"reading V2 is,(V)")
disp("reading V4 is "+string(v3+v2)+" V or "+string(v3-v2)+" V")
