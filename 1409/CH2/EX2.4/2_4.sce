clc;
//page no 2-11
//example: 2.4
//Given carrier power=400 watt and modulation depth as 80%
u=0.8;
Pc=400;
ptotal=Pc*(1+(u^2/2));
disp(+'watts',ptotal, 'Total power delivered is ')
