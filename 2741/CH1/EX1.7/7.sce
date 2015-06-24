clc
clear
//Input data
Pt=100;//Pressure of air when the bulb is placed in hot water in cm of Hg
P100=109.3;//Pressure of air in a constant volume thermometer at 100 degree centigrade in cm of Hg
P0=80;//Pressure of air in a constant volume thermometer at 0 degree centigrade in cm of Hg

//Calculations
t=((Pt-P0)/(P100-P0))*100;//The temperature of the hot water in degree centigrade

//Output data
printf('The temperature of the hot water is %3.2f degree centigrade',t)
