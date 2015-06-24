clc
clear
//Input data
p1=138;//Initial pressure of gas in kN/m^2
p2=690;//Final pressure of gas in kN/m^2
v1=0.112;//Initial volume in m^3

//Calculations
P=p1/p2;//Pressure ratio
v2=v1*(P^(1/1.4));//Final volume of gas in m^3

//Output
printf('The new volume of the gas v2= %3.6f m^3',v2)
