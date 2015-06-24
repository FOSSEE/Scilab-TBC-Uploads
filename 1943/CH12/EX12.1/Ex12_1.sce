
clc
clear
//Input data
V=64000//Volume in m^3
Q=8300//Discharge in m^3/hr
p1=1//Pressure in bar
T1=20+273//Temperature in K
p2=100//Pressure in bar
pn=70//Polytropic efficiency in percent
pt=60//Peaking turbine efficiency in percent
g=1.4//Ratio of specific heats
cp=1.005//Specific heat in kJ/kg.K
R=0.287//Gas constant in kJ/kg.K

//Calculations
T2sT1=(p2/p1)^((g-1)/g)//Temperature ratio 
T2s=(T1*T2sT1)//Temperature in K
T21=(T2s-T1)/(pn/100)//Difference in Temperatures in K
T2=(T21+T1)-273//Temperature in degree C
v=(R*T1)/(p2*100)//Specific volume in m^3/kg
mf=(Q/(v*3600))//Mass flow rate in kg/s
E=(mf*cp*T21)/1000//Rate of energy storage in MW
t=(V/Q)//Storage time in hour
tE=(E*t)//Total energy storage in MWh
Ed=(tE*(pt/100))//Total energy delivered by the peaking turbine in MWh

//Output
printf('(a) the compressed sir temperature is %3.0f degree C \n (b) the storage time is %3.2f hour \n (c) the total energy storage is %3.0f MWh \n (d) the total energy delivered by the peaking turbine is %3.0f MWh',T2,t,tE,Ed)
