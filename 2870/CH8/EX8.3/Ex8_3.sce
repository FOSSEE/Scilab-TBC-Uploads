clc;clear;
//Example 8.3

//given data
Tsink=300;
Tsource=1200;
Qin=500;
Wuout=180;

//calculations
Wrev=(1-Tsink/Tsource)*Qin;
disp(Wrev,'The reversible power in kW');
I=Wrev-Wuout;
disp(I,'the irreversiblity rate in kW')
