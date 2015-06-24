//Part A Chapter 4 Example 6
clc;
clear;
close;
p1=1;//MPa
p2=2;//MPa
V1=0.05;//m^3
n=1.4;//constant
//U=7.5*p*v-425;//kJ/kg
delQ=180;//kJ
//p1*V1^n=p2*V2^n
V2=(p1/p2)^(1/n)*V1;//m^3
delU=7.5*10^3*(p2*V2-p1*V1);//kJ
W=(p2*V2-p1*V1)*10^3/(1-n);//kJ
delTheta=delU+W;//kJ
disp("Heat = "+string(delTheta)+" kJ");
disp("Work = "+string(W)+" kJ");
disp("Change in Internal Energy = "+string(delU)+" kJ");
//If heat transfer is 180 kJ
W=delQ-delU;//kJ
disp("Work = "+string(W)+" kJ");
