//Page Number: 5.43
//Example 5.37
clc;
//Given,
bw=3.5D+3; //Hz
//Roll off factor
a=0.25;
Rb=(2*bw)/(1+a);
disp('b/s',Rb,'Data Rate');
