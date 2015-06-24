//Finding loss
//Example 6.4(pg 214)
clc
clear
Hl=250//Hysteresis loss per m^3 in J/cycle
V=1/150//Volume of specimen in m^3
N=50//No of cycles/sec
E=Hl*V*N//Energy loss per sec in J
Eh=(E*3600)/1000//Energy loss per hour in kWh
printf('Thus Energy loss per hour is %3.2f kWh',Eh)
