// Example 1.7.a : photocurrent
clc, clear
r=0.85; // reponsivity of a photodiode in apmere per watt
p1=1; // incident light power in milli watt
Ip=r*p1;
disp(Ip,"photocurrent (mA) = ")
