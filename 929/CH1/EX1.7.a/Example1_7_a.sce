//Example 1.7(a)

clear;

clc;

//1.7(a)
Gerrormax=0.1;// Maximum Gain Error Percentage

//But Gerror100/T ->Gerrormax=100/Tmin -> Tmin=100/Gerrormax

Tmin=100/Gerrormax;

printf("Loop Gain (T)>=%.2f",Tmin);