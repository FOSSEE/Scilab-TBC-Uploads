clc
clear
//Input data
r=6//Compression ratio
It=0.6//Indicated thermal efficiency ratio
CV=10000//Calorific value in kcal/kg
g=1.4//Ratio of specific heats

//Calculations
an=(1-(1/r)^(g-1))*100//Air standard efficiency in percent
In=(It*(an/100))//Indicated thermal efficiency 
SFC=((4500*60)/(427*CV*In))//Specific fuel consumption in kg/I.H.P.hr

//Output
printf('Specific fuel consumption is %3.3f kg/I.H.P. hr',SFC)
