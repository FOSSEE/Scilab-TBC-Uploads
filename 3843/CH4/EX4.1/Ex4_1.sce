// Example 4_1
clc;funcprot(0);
// Given data
s_0=0;// m
s_1=0.8;// The distance in m

// Calculation
W_12=integrate('100*x','x',s_0,s_1);// N.m
printf("\nThe work done by the spring on the system,W_12=%2.0f J",W_12);
