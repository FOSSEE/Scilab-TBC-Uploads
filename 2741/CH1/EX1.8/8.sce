clc
clear
//Input data
P0=76;//The pressure in the bulb at 0 degree centigrade in cm of Hg
Pt=152+P0;//The excess pressure in the bulb in cm of Hg
T0=273;//Temperature in K

//Calculations
T=(Pt/P0)*T0;//The temperature of the furnace in Kelvin
T1=T-273;//The temperature of the furnace in degree centigrade

//Output data
printf('The temperature of the furnace T = %3.0f Kelvin = %3.0f degree centigrade',T,T1)
