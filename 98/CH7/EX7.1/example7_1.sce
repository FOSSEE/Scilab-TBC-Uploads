//Chapter 7
//Example 7_1
//Page 145

clear;clc;

v1=200;
v2=400;

//ratio of two voltages r is
r=v1/v2;
v2_by_v1=1/(2/r);
//In the above relation 'v' is volume
saving=(1-v2_by_v1)*100;

printf("%% saving in feeder copper = %d %% \n\n", saving);
