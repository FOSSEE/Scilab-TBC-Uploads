//Example 4.16 A random sample of 10 students of class II was selected from schools in a certain region
clc;
clear;
x=[38 46 45 40 35 39 44 45 33 37];
n=10;
m=sum(x)/n;
s=sqrt(18.96);
disp((m+2.26*(s/3)),"to",(m-2.26*(s/3)),"The 95% confidence limits for mean weight are  "),
