//example 18
//reducing air pollution by geothermal heating
clear
clc
s=18*10^6 //quantity of natural gas that will be saved per year in therms
nn=0.0047 //quantity of NOx in kg/therm
nc=6.4 //quantity of CO2 in kg/therm
sn=nn*s //NOx savings per year in kg/year
sc=nc*s //CO2 savings per year in kg/year
printf("\n Hence,geothermal system will save  %.1f *10^4 kg NOx/year. \n",sn/10^4);
printf("\n and = %.1f *10^8 kg CO2/year. \n",sc/10^8);