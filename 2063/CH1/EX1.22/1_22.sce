clc
clear
//Input data
r=12;//Compression ratio of an oil engine, working on the combustion cycle
r1=1.4;//Isentropic ratio
P1=1;//Pressure at the 
P3=35;//Pressure at the end of constant volume heat addition in bar

//Calculations
rho=1+(1/10)*(r-1);//Cut off ratio at 1/10th of the stroke
P2=P1*(r)^r1;//Pressure at the end of isentropic compression in bar
a=P3/P2;//Pressure ratio
n=(1-(1/r^(r1-1))*(a*rho^r1-1)/((a-1)+(r1*a*(rho-1))))*100;//Air standard efficiency in percent

//Output
printf('The air standard efficiency of an oil engine working on the combustion cycle is %3.2f percent',n)
