//Example 4.18: 
clc;
clear;
close;
//given data :
format('v',5)
A=50;//gain without feedback
Af=10;//gain with feedback
Beta=(((A/Af)-1)/A)*100;//feed back ratio
disp(Beta," percentage of feedback is ,(%)=")

