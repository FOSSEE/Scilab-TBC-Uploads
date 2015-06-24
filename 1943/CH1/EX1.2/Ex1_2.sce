
clc
clear
//Input data
P=60//Peak load on power plant in MW
L=[30,20,10,14]//Loads having maximum demands in MW
C=80//Capacity of the power plant in MW
A=0.5//Annual load factor
Y=8760//Number of hours in a year of 365 days

//Calculations
AL=(P*A)//Average load in MW
E=(AL*1000*Y)/10^6//Energy supplied per year in kWh*10^6
DF=(P/(L(1)+L(2)+L(3)+L(4)))//Demand factor 
DIF=((L(1)+L(2)+L(3)+L(4))/P)//Diversity factor

//Output
printf('(a) The average load on the power plant is %3.0f MW \n(b) The energy supplied per year is %3.1f *10^6 kWh \n(c) Demand factor is %3.3f \n(d) Diversity factor is %3.3f',AL,E,DF,DIF)
