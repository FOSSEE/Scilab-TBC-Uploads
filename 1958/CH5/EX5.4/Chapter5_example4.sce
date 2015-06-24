clc
clear
//Input data
r=0.003//Radius of drop of glycerine in m
T=(63.1*10^-3)//Surface tension of glycerine in N/m

//Calculations
P=((2*T)/r)//Excess pressure inside the drop of glycerine in N/m^2

//Output
printf('Excess pressure inside the drop of glycerine is %3.2f N/m^2',P)
