clc
clear
//Input data
r=17;//Compression ratio of a diesel engine
e=13.5;//Expansion ratio
r1=1.4;//Isentropic ratio

//Calculations
p=r/e;//Cut off ratio
n=(1-((1/r^(r1-1)*(p^r1-1)/(r1*(p-1)))))*100;//Air standard efficiency in percent

//Output
printf('Air standard efficiency is %3.1f percent',n)
