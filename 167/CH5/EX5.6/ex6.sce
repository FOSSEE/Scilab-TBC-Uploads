//example 6
//compressing air by compressor
clear
clc
m=0.02 //mass flow rate of the air in kg/s
qout=16 //heat loss during the process in kJ/kg
h1=280.13 //specific enthalpy of air at 280K in kJ/kg
h2=400.98 //specific enthalpy of air at 400K in kJ/kg
win=m*qout + m*(h2-h1) //power input to compressor in kW
printf("\n Hence,the power input to the compressor is = %.2f kW. \n",win);