clc;
//Page no:2-26
//Example-2.12
//Given modulation percentage is 75 and power is 10kW
//we know that ptotal=pc*(1+(u^2/2))
ptotal=10;
u=0.75;
pc=ptotal/(1+(u^2/2));
disp(+'kW',pc,'Carrier power is ');
