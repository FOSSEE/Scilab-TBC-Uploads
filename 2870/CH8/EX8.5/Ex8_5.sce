clc;clear;
//Example 8.5

//given data
Wrev=8191;
Wtotal=38925;
TL=278;
TH=300;

//calculations
Wrm=Wtotal-Wrev;//work remaining
COPHP=1/(1-TL/TH);
Wd=COPHP*Wrev;//work delivered
PS=Wd+Wrm;
PS=round(PS/1000);//factor of 1000 for converting kJ into MJ
disp(PS,'Maximum amount of heat in MJ')
