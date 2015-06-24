//Example 1.6// maximum possible error and root square accuracy
clc;
clear;
close;
//given data :
a=.3; // accuracy limits for transmitter
b=1.4; // accuracy limits for relay
c=0.9; // accuracy limits for receiver
Me=a+b+c;
Rs=sqrt((a^2)+(b^2)+(c^2));
disp(Me,"maximum possible error,Me(%) = ±")
disp(Rs,"root sqare accuracy,Rs(%) = ±")
