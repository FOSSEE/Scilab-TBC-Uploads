// Example 6.3;// feedback output
clc;
clear;
close;
A= 600;// open voltage gain
Af=50;//
Beta=( (A/Af)-1)/A;// feedback ratio
fop= (Beta*100);//percentage of output voltage which is fedback to the input is 
disp(fop,"percentage of output voltage which is fedback to the input is ")
