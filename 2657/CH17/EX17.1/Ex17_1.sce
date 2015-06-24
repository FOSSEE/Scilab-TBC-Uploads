//Estimation of increase in brake power
clc,clear
//Given:
V_s=3000 //Total swept volume in cc
ip=14 //Indicated power in kW/m^3
N=3500 //Engine speed in rpm
eta_v=80 //Volumetric efficiency in percent
T1=27+273 //Atmospheric temperature in K
P1=1.013 //Atmospheric pressure in bar
r_p=1.7 //pressure ratio
eta_C=75 //Isentropic efficiency of blower in percent
eta_m=80 //Mechanical efficiency in percent
g=1.4 //Specific heat ratio(gamma)
//Solution:
V_s=V_s*N/2*1D-6 //Total swept volume in m^3/min
Vi=V_s*eta_v/100 //Unsupercharged induced volume in m^3/min
P2=P1*r_p //Blower delivery pressure in bar
T2!=T1*r_p^((g-1)/g) //Isentropic temperature at 2 in K
T2!=ceil(T2!)
T2=(T2!-T1)/(eta_C/100)+T1 //Temperature at 2 in K
V1=V_s*(P2/T2)*(T1/P1) //Volume at atmospheric conditions in m^3/min
Vi_inc=V1-Vi //Increase in induced volume in m^3/min
ip_inc1=ip*Vi_inc //Increased in ip from air induced in kW
ip_inc2=(P2-P1)*100*V_s/60 //Increased in ip due to increased induction pressure in kW
ip_inc=ip_inc1+ip_inc2 //Total increase in ip in kW
bp_inc=eta_m/100*ip_inc //Total increase in bp in kW
R=0.287 //Specific gas constant in kJ/kgK
cp=1.005 //Specific heat in kJ/kgK
m2=P2*100*V_s/(R*T2*60) //Mass of air delivered by the blower in kg/s
Power=m2*cp*(T2-T1)/(eta_m/100) //Power required by the blower in kW
bp_inc=bp_inc-Power //Net increase in brake power in kW
//Results:
printf("\n The net increase in the brake power = %.1f kW\n\n",bp_inc)
