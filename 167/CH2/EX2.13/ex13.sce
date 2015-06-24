//example 13
// annual lighting cost of a classroom
clear
clc
p=80 //power consumed by fluoroscent lamp in watt
n=30 //no. of lamps used
P=p*n/1000 //lighting power in kW
t=250*12 //operating hours in a year
E=P*t //lighting energy/year
c=E*0.07 //cost of lighting  a classroom for a year in dollars
printf("\n Hence,annual energy cost of lighting for the classroom is = %.0f $/year. \n",c);