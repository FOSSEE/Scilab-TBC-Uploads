//Example 20.2
close;
clc;
//given data
m=200;    //Mass in grams
sp=1;     //sp heat of water in cal/gm deg C
T1=30;    //in deg C
T2=40;    //in deg C
//power radiated 
p=4.18*m*sp*(T2-T1);
printf('\nPower radiated %0.2f kW\n',p/1000);