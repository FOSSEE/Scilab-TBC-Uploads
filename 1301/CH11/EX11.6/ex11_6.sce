clc;
hc=1.1*10^4;     //heat of combustion of heat oil in kcal/kg
p=10^6;       //Power in Watt
t=3600*24;       //time in sec
w=p*t;          //calculating power produced in a day in Joule
e=0.4;         //efficiency
hi=w/e;        //Heat input in Joule sice efficiency=output/input
hi=hi/(4.185*10^3);   //for calculating heat input in kcal
m=hi/hc;     //amount of fuel burnt each day in kg
disp(m,"Amount of fuel burnt each day in kg = ");   //displaying result