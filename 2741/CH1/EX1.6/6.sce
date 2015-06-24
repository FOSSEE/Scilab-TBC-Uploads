clc
clear
//Input data
V=1000;//Volume of the bulb of the callendar's compensated constant pressure air thermometer in cm^3
v=100;//Volume of mercury drawn out of the reservoir in cm^3

//Calculations
t=((v)/(V-v))*273;//The temperature of the bath in degree centigrade

//Output data 
printf('The temperature of the bath on the celsius scale is %3.2f degree centigrade',t)
