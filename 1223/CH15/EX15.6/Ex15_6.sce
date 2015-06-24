clear;
clc;
//Example 15.6
R1=10000;
R2=90000;
Vh=10;
Vl=-10;
Vth=R1*Vh/(R1+R2);
printf('\nupper crossover voltage=%.f V\n',Vth)
Vtl=R1*Vl/(R1+R2);
printf('\nlower crossover voltage=%.f V\n',Vtl)
x=Vth-Vtl;
printf('\nhysteresis width =%.fV\n',x)
