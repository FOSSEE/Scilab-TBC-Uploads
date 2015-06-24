clear;
clc;
close;
disp("Example 5.6")
M9=1 // Mach no.
p=1/8 //p=p0/pt7
gm=1.3 //gamma
V9cd=(2*(1-p^((gm-1)/gm)))^(1/2)
px=p*((gm+1)/2)^(gm/(gm-1))
V9c=(2*(gm-1)/(gm+1))^(1/2)
FR=(V9cd/V9c)/(1+(1-px)/gm)
pr=(FR-1)*100/1
disp(pr,"% increase in gross thrust:")