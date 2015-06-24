clear
clc

//Example 9.1
disp('Example 9.1')

q1=12;//cub ft/min
q2=6;
q3=13;
A=%pi*3^2;//ft^2
delta_t=10;//min
delta_h_max=delta_t*(q1+q2-q3)/A;

mprintf('Alarm should be at least %f ft below top of tank',delta_h_max)
