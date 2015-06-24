// Example 7.11:feedback ratio
clc;
clear;
close;
Af=40;//gain wtih feedback
Vi=2.4;//input voltage
Vif=0.1;//input voltage with feedback
A= Af*(Vi/Vif);//gain without feedback
Beta= (1-(A/Af))/A;//feedback ratio
disp(Beta,"feedback ratio is")
