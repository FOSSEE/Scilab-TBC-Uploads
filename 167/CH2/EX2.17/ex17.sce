//example 17
//Cost Savings Associated with High-Efficiency motors
clear
clc
n1=89 //efficiency of first motor
n2=93.2 //efficiency of second motor
c=0.08 //cost of electricity in $/kWh
p=60*0.7457 //rated power in kW
h=3500 //operating hours per year
e=p*h*(1/(n1/100)-1/(n2/100)) //energy savings
s=e*c //cost savings
t=640/s //simple payback period in year
printf("\n Hence,the amount of energy saved is = %.0f kWh/year. \n",e);
printf("\n The money saved is =%.0f $/year. \n",s);
printf("\n The payback period is=%.2f years.\n",t);