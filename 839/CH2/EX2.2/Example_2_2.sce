//clear//
clear;
clc;

//Example 2.2

//(a)
//Using Eq.(2.15)
t = (100*1.1)/(1153-865) 
rate_each_stream  = (1500*42)/(24*60)
total_liquid_holdup = 2*43.8*23
vol = total_liquid_holdup/0.95
disp('gal',vol,'vessel size =')

//(b) tank diameter
Zt = 0.90*4
ZA1 = 1.8 //[ft];
ZA2 = 1.8 + (3.6-1.8)*(54/72)
disp('ft',ZA2,'tank diameter =')
