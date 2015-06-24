// Example 6.3;// feedback ratio
clc;
clear;
close;
Vo= 5;// output voltage
Vin=0.1;//input voltage without feedback
A= Vo/Vin;// Gain without feedback
Vin1=0.2;//input voltage with feedback
Af= Vo/Vin1;// Gain with feedback
Beta=( (A/Af)-1)/A;// feedback ratio 
disp(Beta,"feedback ration is ")
