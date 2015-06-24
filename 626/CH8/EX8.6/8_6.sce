clear;
clc;
close;
disp("Example 8.6")

Tt1=288
Cp=1004
gm=1.4
ett=0.8
p=6.8 //pt3/pt1
C1=200
pt1=101
Tt3=Tt1*(1+(1/ett)*(p^((gm-1)/gm)-1))
Tt2s=Tt1*p^((gm-1)/gm)
T1=Tt1-C1^2/(2*Cp)
ets=(Tt2s-T1)/(Tt3-T1)
disp(ets,"Compressor total-to-static efficiency :")