//example 7
//work potential of compressed air in tank
clear
clc
To=300 //in K
T1=To
R=0.287 //kPa-m^3/kg-K
V=200 //in m^3
P1=1000 //kPa
m1=P1*V/(R*T1) //in kg
Po=100 //in kPa
o1=R*To*(log(P1/Po)+Po/P1-1) //kJ/kg
X1=m1*o1 //exergy content of compressed air in kJ
printf("\n Hence, the exergy content of compressed air is = %.0f MJ. \n",X1/1000);