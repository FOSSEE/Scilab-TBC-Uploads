//Calculations on Otto cycle
clc,clear
//Given:
CV=42000 //Calorific value of the fuel in kJ/kg
a=30/100,b=70/100 //Fraction of compression stroke at point a, b
P_a=1.33,P_b=2.66 //Pressure at point a, b
n=1.33 //Polytropic index
eta_cycle=50/100 //Air standard cycle efficiency
//Solution:
//Refer fig 2.25
//Since, compression follows PV^n = C
//Thus, P_a*V_a^n = P_b*V_b^n
//Assume a_b = V_a/V_b
a_b=(P_b/P_a)^(1/n) //Ratio of volume at a to volume at b
//Defining the function, ratio of r(compression ratio)
function [ratio]=Volume(r)
    V_a=1+0.7*(r-1)
    V_b=1+0.3*(r-1)
    ratio=V_a/V_b-a_b
endfunction
funcprot(0)
r=fsolve(1,Volume) //Compression ratio
g=1.4 //Specific heat ratio(gamma)
eta=round(1000*(1-1/r^(g-1)))/1000 //Air standard efficiency
eta_it=eta_cycle*eta //Indicated thermal efficiency
//Since, 1 kWh = 3600 kJ
Q1=3600/eta_it //Heat supplied in kJ/kWh
isfc=Q1/CV //Indicated specific fuel consumption in kg/kWh
//Results:
printf("\n The compression ratio, r = %.2f",r)
printf("\n The fuel consumption, isfc = %.3f kg/kWh\n\n",isfc)
