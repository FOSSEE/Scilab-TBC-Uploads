//Example 7.5.10: resistance 
clc;
clear;
close;
format('v',9)
g=2000;//in ohms
s=10;//in kilo ohms
q1=40;//divisions
q2=46;//divisions
r=((q1/q2)*((s*10^3)+(g)))-g;//in ohms
disp(r,"unknown resistance in ohms is")
//answer is wrong in the textbook
