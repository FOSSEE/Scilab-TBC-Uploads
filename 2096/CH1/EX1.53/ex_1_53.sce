//Example 1.53://STANDARD DEVIATION OF THE METER AND PROBABLITY OF ERROR
clc;
clear;
x=0.8;//in ampere
y=0.5248;//
SD=x/y;//standard deviation
x1=1.2;//in ampere
y1=x1/SD;//probability of error
disp(SD,"standard deviation is")
disp(2*0.2842*100,"probablity of an error for 1.2A in percentage is")
//thus 57% of the readings are with in 1.2A OF THE TRUE VALUE
