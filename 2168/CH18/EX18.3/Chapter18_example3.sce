clc
clear
//Input data
l=4.5//Capacity in litres
P=20//Power in H.P per m^3 of free air induced per minute
N=1700//Speed in r.p.m
nv=75//Volumetric efficiency in percent
Ta=27+273//Atomspheric temperature in K
pa=1.03//Atmospheric pressure in kg/cm^2
pr=1.75//Pressure ratio
ie=70//Isentropic efficiency in percent
nm=75//Mechanical efficiency in percent
g=1.4//Ratio of specific heats
nb=80//Efficiency of blower in percent
R=29.27//Characteristic gas constant in kg.m/kg.K
Cp=0.24//Specific heat at constant pressure in kJ/kg.K
J=427//Mechanical equivalent of heat in kg.m/kcal

//Calculations
Vs=(l/1000*(N/2))//Swept volume in m^3/min
uVs=((nm/100)*Vs)//Unsupercharged swept volume in m^3/min
dp=(pr*pa)//Blower delivery pressure in kg/cm^2
Tc=(Ta*pr^((g-1)/g))//Temperature after isentropic compression in K
dT=(Ta+(Tc-Ta)/(ie/100))//Blow delivery temperature in K
Va=(Vs*(dp*Ta)/(pa*dT))//Equivalent volume at free air condition in m^3/min
iiv=(Va-uVs)//Increase in the induced volume in m^3/min
iIHP=(P*iiv)//ncrease in I.H.P 
iBHP=(iIHP*(nm/100))//Increase in B.H.P
ma=(dp*10^4*Vs)/(R*dT)//Mass of air delivered by blower in kg/min
HP=(ma*Cp*(dT-Ta)*J)/(4500*(80/100))//H.P required for blower
nibhp=(iBHP-HP)//Net increse in engine b.h.p
pei=(nibhp/(P*uVs))*100//Percentage increase

//Output
printf('Percentage net increase in B.H.P is %3.1f percent',pei)
