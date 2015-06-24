clear;
clc;
disp("--------------Example 3.3---------------")
// frequency of power used at home = 60Hz
f=60
t=1/f // formula to calculate time period 
T=t*10^3 // express time period in milliseconds
printf("\n The period of the power for our lights at home is %fs or %fms .",t,T);  //display the result 
disp("Our eyes are not sensitive enough to distinguish these rapid changes in amplitude.")
