clc;
//page no:2-12
//Example 2.5
//Given power= 20 kilowatts and modulation % =75
Ptotal=20;
u=0.75;
ptotal=Pc*(1+(u^2/2));
Pc=Ptotal/(1+(u^2/2));
disp(+'kW',Pc,'Carrier Power is ');
Pc=15.6;
Psb=Pc*(u^2/4);
disp(+'kW',Psb,'Sideband power is ');
//As the power in both sidebands is equal
disp(+'kW',Psb,'Upper Sideband power is ');
disp(+'kW',Psb,'Lower Sideband power is ');
