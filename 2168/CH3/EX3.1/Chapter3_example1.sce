clc
clear
//Input data
p=[1,8]//Pressure at the beginning and end of compression in kg/m^3
g=1.4//Ratio of specific heats

//Calculations
r=(p(2)/p(1))^(1/g)//Compression ratio
n=(1-(1/r)^(g-1))*100//Air standard efficiency in percent

//Output
printf('Air standard efficiency of an engine working on the Otto cycle is %3.1f percent',n)
