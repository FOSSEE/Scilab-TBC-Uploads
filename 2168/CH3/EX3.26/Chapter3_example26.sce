clc
clear
//Input data
r=7//Compression ratio
v=1//Specific heat at constant volume increases by 1 percent
g=1.4//Ratio of specific heats

//Calculations
e=(1-(1/r^(g-1)))//Air standard efficiency
dee=-(((1-e)*(g-1)*log(r)*(v/100))/e)*100//Change in efficiency to the original efficiency
x=-(dee)//For Output purpose

//Output
printf('Percentage change is efficiency is %3.2f percent i.e., a decrease of %3.2f percent',dee,x)
