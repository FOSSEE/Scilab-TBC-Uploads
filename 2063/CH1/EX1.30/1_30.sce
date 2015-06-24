clc
clear
//Input data
P1=1;//Initial pressure of air received by gas turbine plant in bar
T1=310;//Initial tamperature in K
P2=5.5;//Pressure at the end of compression in bar
r=1.4;//isentropic index

//Calculations
rp=P2/P1;//pressure ratio
n=(1-(1/rp)^((r-1)/r))*100;//Thermal efficiency of the turbine in percent

//Output data
printf('Thermal efficiency of the turbine unit is %3.2f percent',n)
