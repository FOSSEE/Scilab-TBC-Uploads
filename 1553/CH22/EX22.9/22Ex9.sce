//chapter 22 Ex 9

clc;
clear;
close;
rate=10/100; t=2; difference=631;
CI=((1+rate)^t)-1;
SI=t*rate;
Sum=difference/(CI-SI);
mprintf("The Sum is Rs.%.0f",Sum);
