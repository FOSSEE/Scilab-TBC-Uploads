
clc
clear
//Input data
n1=0.5//Efficiency of mercury
n2=0.4//Efficiency of steam
n3=0.25//Efficiency of composite cycle

//Calculations
n=(1-(1-n1)*(1-n2)*(1-n3))*100//Overall efficiency of the combined cycle in percent

//Output
printf('The overall efficiency of the combined cycle is %3.1f percent',n)
