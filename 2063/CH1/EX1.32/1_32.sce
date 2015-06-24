clc
clear
//Input data
P1=1;//The pressure of air entering the compressor of a gas turbine plant operating on Brayton cycle in bar
T1=293;//Initial temperature in K
r=6.5;//Pressure ratio of the cycle
r1=1.4;//Isentropic ratio

//Calculations
T2=T1*(r)^((r1-1)/r1);//Temperature at the end of compression in K
T4=2.3*(T2-T1)/0.708;//Temperature at point 4 in K
T3=T4*(r)^((r1-1)/r1);//Maximum temperature in K
n=(1-((T4-T1)/(T3-T2)))*100;//Turbine plant efficiency in percent

//Output
printf('(a)The maximum temperature of the cycle is %3.1f K\n (b)Cycle efficiency is %3.2f percent',T3,n)
