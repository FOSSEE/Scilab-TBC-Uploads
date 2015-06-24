//Example 5.5: 
clc;
clear;
close;
//given data :
n=10;//turn ratio
Rl=10;//ohm
Rld=n^2*Rl;//in ohm
Ic=100;//in mA
Irms=Ic/(sqrt(2));//in mA
P=Irms^2*Rld;//in W
format('v',3)
disp(P*10^-6,"maximum power output is ,(W)=")
