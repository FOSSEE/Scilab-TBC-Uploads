//Example 4.21//compare diameter and length
clc;
clear;
close;
format('v',6)
v1=110;//in volts
cp1=16;//in cp
cp2=25;//in cp
v2=220;//in volts
ri=((cp1/cp2)*(v2/v1));//ratio of curents
dr=(ri)^(2/3);//ratio of diameters
di=(cp1/cp2)*(1/dr);//ratio of lengths
disp(dr,"ratio of diameter is")
disp(di,"ratio of length is")
