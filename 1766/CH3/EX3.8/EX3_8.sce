clc;funcprot(0);//Example 3.8
//Initilisation of Variables
Ti=20;...//Uniform temparature of soil in degrees celcius
To=-10;...//Uniform temparature of surface in degrees celcius
al=0.2*10^-6;.....//thermal diffucivity of soil in m^2/s
T=0;....//Temparature of pipe
t=60*24*3600;....//soil subjected to surface time in s
//calculations
E=erfinv((T-To)/(Ti-To));.....//error funtion value
x=E*2*sqrt(al*t);....//depth from surface of the soil  in m
disp(x,"depth from surface of the soil  in m:")
