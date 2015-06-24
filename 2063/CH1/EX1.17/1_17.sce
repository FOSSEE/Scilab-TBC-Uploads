clc
clear
//Input data
T1=303;//Temperature at the beginning of compression in K
T2=823;//Temperature at the end of compression in K
T3=3123;//Temperature at the end of heat addition in K
T4=1723;//Temperature at the end of isentropic expansion in K
r=1.4;//Isentropic ratio

//Calculations
n=(1-((T4-T1)/(r*(T3-T2))))*100;//Efficiency of the cycle in percent

//Output
printf('Air standard efficiency of the cycle is %3.1f percent',n)
