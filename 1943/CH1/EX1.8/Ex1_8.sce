
clc
clear
//Input data
C=200//Installed capacity of the plant in MW
CC=400//Capital cost in Rs crores
ID=12//Rate of interest and depreciation in percent
AC=5//Annual cost of fuel, salaries and taxation in Rs. crores
L=0.5//Load factor
AL2=0.6//Raised Annual load
Y=8760//Number of hours in a year of 365 days

//Calculations
AvL=(C*L)//Average Load in MW
E=(AvL*1000*Y)//Energy generated per year in kWh
IDC=((ID/100)*CC*10^7)//Interest and depreciation (fixed cost) in Rs
T=(IDC+(AC*10^7))//Total annual cost in Rs
CP1=(T/E)*100//Cost per kWh in paise
AvL2=(C*AL2)//Average Load in MW
E2=(AvL2*1000*Y)//Energy generated per year in kWh
CP2=(T/E2)*100//Cost per kWh in paise
S=((CP1)-(CP2))//Saving in cost per kWh in paise
S1=ceil(S)//Rounding off to next higher integer

//Output
printf('Cost of generation per kWh is %3.0f paise \n Saving in cost per kWh if the annual load factor is raised to 60 percent is %3.0f paise',CP1,S1)
