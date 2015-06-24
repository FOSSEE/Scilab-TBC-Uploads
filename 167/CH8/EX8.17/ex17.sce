//example 17
//charging of compressed air storage system
clear
clc
P2=1000 //in kPa
V=200 //volume of rigid tank in m^3
R=0.287 //kPa-m^3/kg-K
T2=300 //in K
m2=P2*V/(R*T2) //final mass of the air  in kg
P0=100 //atmospheric presssure in kPa
T0=300 //atmospheric temperature in K
o2=R*T0*(log(P2/P0)+P0/P2-1) //exergy of the pressurised air in the tank in kJ/kg
Wrev=m2*o2 //reversible work in kJ
printf("\n The minimum work requirement for the process is = %.0f MJ. \n",Wrev/1000);