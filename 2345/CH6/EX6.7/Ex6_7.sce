//Finding energy loss
//Example 6.7(pg 215)
clc
clear
m=12000//mass in gm
d=7.5//density of iron in gm/c.c
Hl=3000//Hysteresis loss per cc in ergs/cycle
N=50//No of cycles per sec
v=m/d//volume of specimen
E=v*Hl*N//Energy loss per cc in ergs
Eh=E/(10^10)//Energy loss per hour in kWh
printf('Thus the Loss in energy is %3.3f kWh',Eh)
