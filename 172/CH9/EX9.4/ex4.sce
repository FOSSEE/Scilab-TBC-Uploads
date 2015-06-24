//example 4
//calculating required specific work
clear
clc
Cp=1.004 //specific heat of air at constant pressure in kJ/kg-K
Ti=290 //initial temperature in kelvins
Pi=100 //initial pressure in kPa
Pe=1000 //final pressure in kPa
k=1.4 
Te=Ti*(Pe/Pi)^((k-1)/k) //final temperature in kelvins
we=Cp*(Ti-Te) //required specific work in kJ/kg
printf("\n hence,specific work required is we=%.3f kJ/kg.\n",we)