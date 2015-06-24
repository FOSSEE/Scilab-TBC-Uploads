clc
clear
//Input data
r=16//Compression ratio
k=5//Cut off takes place at 5% of the stroke
g=1.4//Ratio of specific heats

//Calculations
c=(((k/100)*(r-1))+1)//Cut off ratio
na=(1-((1/r^(g-1))*((c^g-1)/(g*(c-1)))))*100//Air standard efficiency in percent

//Output
printf('The air standard efficiency is %3.1f percent',na)
