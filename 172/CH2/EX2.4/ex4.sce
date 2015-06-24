//example 4
//Calculating atmospheric pressure 
clear
clc
dm=13534 //density of mercury in kg/m^3
H=0.750 //height difference between two columns in metres
g=9.80665 //acc. due to gravity  in m/s^2
Patm=dm*H*g/1000 //atmospheric pressure in kPa
printf("\n hence, atmospheric pressure is Patm = %.2f kPa. \n",Patm)