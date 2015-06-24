clc
clear
//Input data
p1=1//Inlet pressure in bar
p2=32.425//Pressure at the end of isentropic compression in bar
r=6//Ratio of expansion
r1=1.4//Isentropic index

//Calculations
rc=(p2/p1)^(1/r1)//Compression ratio
b=(rc/r)//cut-off ratio
n=(1-((b^r1-1)/(rc^(r1-1)*r1*(b-1))))*100//Air-standard efficiency
pm=((p1*rc^r1*n/100*r1*(b-1))/((r1-1)*(rc-1)))//Mean effective pressure in bar

//Output
printf('Air-standard efficiency is %3.2f percent \n Mean effective pressure is %3.3f bar',n,pm)
