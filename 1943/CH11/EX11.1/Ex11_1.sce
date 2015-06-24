
clc
clear
//Input data
C=3.5//Capacity in litres
P=13.1//Indicated power in kW/m^3
N=3600//Speed in rpm
ve=82//Volumetric efficiency in percent
p1=1.013//Pressure in bar
T1=25+273//Temperature in K
rp=1.75//Pressure ratio
ie=70//Isentropic efficiency in percent
me=80//Mechanical efficiency in percent
g=1.4//Ratio of specific heats
R=0.287//Gas constant in kJ/kg.K
Cp=1.005//Specific heat in kJ/kg.K

//Calculations
EC=(C/1000)//Engine capacity in m^3
Vs=(N/2)*EC//Swept volume in m^3
Vui=(ve/100)*Vs//Unsupercharged induced volume in m^3/min
dp=(rp*p1)//Blower delivery pressure in bar
T2sT1=(rp)^((g-1)/g)//Ratio of temperatures
T2s=(T2sT1*T1)//Temperature in K
dT21=(T2s-T1)/(ie/100)//Difference in temperature in K
T2=dT21+T1//Temperature in K
EV=(Vs*dp*T1)/(p1*T2)//Equivalent volume in m^3/min
iiv=EV-Vui//Increase in induced volume in m^3/min
iip=(P*iiv)//Increase in indicated power in kW
iipi=((dp-p1)*100*Vs)/60//Increase in induced power due to increase in induction pressure in kW
tiip=iip+iipi//Total increase in indicated power in kW
tibp=tiip*(me/100)//Total increase in brake power in kW
ma=(dp*100*Vs)/(60*R*T2)//Mass of air in kg/s
WI=(ma*Cp*(T2-T1))//Work input to heater in kW
Pb=(WI/(me/100))//Power required in kW
NI=tibp-Pb//Net increase in brake power in kW

//Output
printf('Net increase in brake power is %3.2f kW',NI)
