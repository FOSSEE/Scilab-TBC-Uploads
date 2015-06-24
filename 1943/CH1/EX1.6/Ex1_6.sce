
clc
clear
//Input data
C=210//Capacity in MW
ID=12//Interest and depreciation in percent
CC=18000//Capital cost/kW installed in Rs
L=0.6//Annual load factor
AC=0.54//Annual capacity factor
RC=(200*10^6)//Annual running charges in Rs
E=6//Energy consumed by power plant auxiliaries in percent
Y=8760//Number of hours in a year of 365 days

//Calculations
MD=(C/L)*AC//Maximum demand in MW
RSC=(C-MD)//Reserve Capacity in MW
AL=(L*MD)//Average load in MW
EP=(AL*1000*Y)//Energy produced per year in kWh
NE=((100-E)/100)*EP//Net energy delivered in kWh
AID=((ID/100)*CC*C*1000)//Annual interest and depreciation in Rs
T=(AID+RC)//Total annual cost in Rs
CP=(T/NE)*100//Cost of power generation in paise

//Output
printf('(a) The cost of power generation per kWh is %3.0f paise \n(b) The reserve capacity is %3.0f MW',CP,RSC)
