//example 6
//work required to fill the tank
clear
clc
T1=17+273 //initial temperature of tank in Kelvins
sT1=6.83521 //specific entropy in kJ/kg-K
R=0.287 //gas constant in kJ/kg-K
P1=100 //initial pressure in kPa
P2=1000 //final pressure in kPa
sT2=sT1+R*log(P2/P1) //specific entropy at temperature T2 in kJ/kg-K
T2=555.7 //from interplotation 
V1=0.04 //volume of tank in m^3
V2=V1 //final volume is equal to initial volume
m1=P1*V1/(R*T1) //initial mass of air in tank in kg
m2=P2*V2/(R*T2) //final mass of air in tank in kg
Min=m2-m1 //in kg
u1=207.19 //initial specific heat of enthalpy in kJ/kg
u2=401.49 //final specific heat of enthalpy in kJ/kg
hin=290.43 //in kJ/kg
W12=Min*hin+m1*u1-m2*u2 //work required to fill the tank in kJ
printf("\n hence,the total amount of work required to fill the tank is W12=%.1f m/s.\n",W12)