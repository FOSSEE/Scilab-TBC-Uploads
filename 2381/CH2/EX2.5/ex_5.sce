//Example 5 // time
clc;
clear;
close;
tr=50;//seconds
r=(1/(2*tr));//s^-1
t=1/r;//seconds
disp(t,"time in which amplitude falls to 1/e times the initial value is ,(seconds)=")
t2=tr;//
disp(t2,"time in which system falls to 1/e times the initial value is ,(seconds)=")
t3=2*(1/r);//
disp(t3,"time in which energy falls to 1/e^4 of the initial value is,(seconds)=")
