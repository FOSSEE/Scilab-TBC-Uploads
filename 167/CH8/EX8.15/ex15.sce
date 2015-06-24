//example 15
//second law analysis of steam turbine 
clear
clc
P1=3 //in MPa
T1=450 //in °C
h1=3344.9 //in kJ/kg
s1=7.0856 //in kJ/kg-K
P2=0.2 //in MPa
T2=150 //in °C
h2=2769.1 //in kJ/kg
s2=7.2810 //in kJ/kg-K
P0=100 //in kPa
T0=25//in °C
h0=104.83 //in kJ/kg
s0=0.3672 //in kJ/kg-K
m=8 //mass flow rate of turbine in kg/s
Qout=300 //heat loss to surrounding air in kW
Wout=m*(h1-h2)-Qout //actual power output of turbine in kW
Wrevout=m*((h1-h2)-(T0+273)*(s1-s2)) //reversible power in kW
n=Wout/Wrevout //second law efficiency
Xdestroyed=Wrevout-Wout //exergy destroyed in kW
w1=h1-h0-(T0+273)*(s1-s0) //maximum work potential in kJ/kg
printf("\n Hence,The actual power output is = %.0f kW. \n",Wout);
printf("\n The maximum possible power output is = %.0f kW. \n",Wrevout);
printf("\n The second law efficiency is = %.1f percent. \n",n*100);
printf("\n The exergy destroyed is = %.0f kW. \n",Xdestroyed);
printf("\n The exergy of the steam at the inlet conditions is =%.0f kJ/kg. \n",w1);