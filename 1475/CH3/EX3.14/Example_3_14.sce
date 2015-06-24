//Example 3.14 A A simple random sample of size is 5
clc;
clear;
n=5;
N=41;
s_d=6.25;
disp(s_d,"Standard Deviation",N,"Total Units",n,"Drawn sample of size is ");
disp((s_d/sqrt(n))*(sqrt((N-n)/(N-1))),"Standard error is " );
