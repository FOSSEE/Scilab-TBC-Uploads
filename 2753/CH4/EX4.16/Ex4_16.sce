//Example 4.16: 
clc;
clear;
close;
//given data :
A=200;//gain without feedback
Beta=0.25;//feed back ratio
gc=10;//percent gain change
dA=gc/100;//
dAf= ((1/(1+Beta*A)))*dA;//
format('v',7)
disp(dAf,"small change in gain is,=")

