clc;clear;
//Example 2.17

//given values
Pstd=4520;
Phem=5160;//prices of std and high eff motor in USD
R=60*0.7457;//rated power in kW from hp
OpHrs=3500;//Operating hours
Lf=1;//Load Factor
nsh=0.89;
nhem=0.932;//efficiency of shaft and high eff. motor
CU=0.08;//per unit cost in USD

//calculation
PS=R*Lf*(1/nsh-1/nhem);//Power savings = W electric in,standard -  W electric in,efficient
ES=PS*OpHrs;//Energy savings = Power savings * Operating hours
ES=floor(ES);//rounding off
disp(ES,'Energy savings in kWh/year');
CS=ES*CU;
CS=floor(CS);//rounding off
disp(CS,'Cost savings per year in USD');
EIC=Phem-Pstd;//excess intial cost
Y=EIC/CS;
disp(Y,'simple payback period in years')
