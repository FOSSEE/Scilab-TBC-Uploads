// Example 6.12;//feedback factor and bandwidth
clc;
clear;
close;
B=4;//bandwidth in mega hertz without feedback
Av= 1500;// open loop voltage gain
Avf= 150;//GAIN WITH FEEDBACk
AvB= ((Av/Avf)-1);//feedback factor
BWf=(1+AvB)*B;//bandwidth in mega hertz with feedback
disp(AvB,"FEEDBACK FACTOR IS")
disp(BWf,"bandwidth in mega hertz with feedback is")
