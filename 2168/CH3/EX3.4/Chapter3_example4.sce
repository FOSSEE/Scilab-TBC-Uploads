clc
clear
//Input data
T=[100+273,473+273]//Temperatures at the beginning and at the end of adiabatic compression in K
g=1.4//Ratio of specific heats

//Calculations
an=(1-(T(1)/T(2)))*100//Air standard efficiency in percent 
r=(T(2)/T(1))^(1/(g-1))//Compression ratio

//Output
printf('The compression ratio is %3.2f \n Air standard efficiency is %i percent',r,an)
