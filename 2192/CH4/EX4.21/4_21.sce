clc,clear
printf('Example 4.21\n\n')

V= 0.5*0.25*0.02//volume of plywood to be heated
D=600 //density of plywood in kg/m^3
W=V*D

specific_heat = 1500
T1=25;T2=125; //initial and final temperature
heat= specific_heat * W * (T2-T1)/(60*60) //in W-Hr
T=10 //duration of heating in minutes
power_required = heat/(T/60)
efficiency= 50/100 //efficiency of process
power_input= power_required/ efficiency

printf('Power required for heating = %.0f watts',power_input)
