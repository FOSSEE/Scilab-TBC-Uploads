
clc
clear
//Input data
C=300//Capacity of power plant in MW
MXD=240//Maximum demand in MW in a year
MND=180//Minimum demand in MW in a year
//Assuming the load duration curve shown in Figure E1.9 on page no 30 to be straight line
Y=8760//Number of hours in a year of 365 days

//Calculations
E=((MND*Y)+0.5*(MXD-MND)*Y)*1000//Energy supplied per year in kWh
AL=(E/Y)//Average load in kW
L=((AL/1000)/MXD)//Load factor
CF=((AL/1000)*Y)/(C*Y)//Capacity factor

//Output
printf('(a) Load factor is %3.3f \n(b) Capacity factor is %3.2f',L,CF)
