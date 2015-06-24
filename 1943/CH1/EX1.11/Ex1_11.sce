
clc
clear
//Input data
C=10//Capacity of generating unit in MW
MD=[6,3.6,0.4]//Maximum demand for domestic consumers, industrial consumers and street-lighting load respectively in MW
L=[0.2,0.5,0.3]//Load factor for domestic consumers, industrial consumers and street-lighting load respectively
CC=10000//Capital cost of the plant per kW in Rs
RC=3600000//Total rumming cost per year in Rs
AID=10//Annual interest and depreciation on capital cost in percent
Y=8760//Number of hours in a year of 365 days

//Calculations
E=((MD(1)*L(1))+(MD(2)*L(2))+(MD(3)*L(3)))*Y*1000//Energy supplied per year to all three consumers in kWh
OC=(RC/E)//Operating charges per kWh in Rs
CCP=(C*1000*CC)//capital cost of the plant in Rs
FCY=((AID/100)*CCP)//Fixed charges per year in Rs
FCkW=(FCY/CC)//Fixed charges per kW in Rs
//a) For domestic consumers
TC1=((FCkW*MD(1)*1000)+(OC*MD(1)*L(1)*Y*1000))//Total chrges in Rs
OC1=(TC1/(MD(1)*L(1)*Y*1000))*100//Overall cost per kWh in paise
//b)For industrial consumers
TC2=((FCkW*MD(2)*1000)+(OC*MD(2))*L(2)*Y*1000)//Total chrges in Rs
OC2=(TC2/(MD(2)*L(2)*Y*1000))*100//Overall cost per kWh in paise
//c) For street-lighting load
TC3=((FCkW*MD(3)*1000)+(OC*MD(3))*L(3)*Y*1000)//Total chrges in Rs
OC3=(TC3/(MD(3)*L(3)*Y*1000))*100//Overall cost per kWh in paise

//Output
printf('Overall cost of energy per kWh for:\n(a)Domestic consumers is %3.0f paise\n(b)Industrial consumers is %3.0f paise\n(c)Street-lighting load is %3.0f paise',OC1,OC2,OC3)
