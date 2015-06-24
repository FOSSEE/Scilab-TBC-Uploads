//Finding heat efficiency
//Example 2.20(pg. 57)
clc
clear
m=1//mass in kg
S=4200//specific heat of water
T2=100,T1=15// temp in degree C
H=m*S*(T2-T1)//heat utilised in J
printf('Heat utilised is %6.2f Joules \n',H)
W=500//wattage rating of kettle in volts
t=15*60// time in sec
Hd=W*t//heat developed in J
printf('Heat developed is %6.2f Joules \n',Hd)
He=(H/Hd)*100//Heat efficiency
printf('Thus heat efficiency is %3.2f percent',He)
