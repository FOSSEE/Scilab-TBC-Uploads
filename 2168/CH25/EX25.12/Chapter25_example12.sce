clc
clear
//Input data
p1=1.03//Inlet air pressure in kg/cm^2
T1=15+273//Inlet temperature of air in K
rp=5//Pressure ratio
nc=85//Isentropic efficiency of the compressor in percent
T3=540+273//Temperature of the gas entering the turbine in K
nt=80//Isentropic efficiency of the turbine in percent
NHP=2000//Net horse power in H.P
fp=0.1//Fall of pressure through the combustion system in kg/cm^2
g=1.4//Ratio of specific heats for both air and gas
Cp=0.25//Specific heat at constant pressure in kJ/kg.K for both air and gas

//Calculations
T2i=(T1*rp^((g-1)/g))//Temperature of air at the end of adiabatic compression in K
dt=(T2i-T1)//Isentropic temperature rise in K
adt=(dt/(nc/100))//Actual temperature rise in K
Wc=(Cp*adt)//Workdone in compressor in kcal/kg of air
e=((rp*p1-fp)/p1)//Expansion ratio
T4i=(T3/e^((g-1)/g))//Temperature of air at the end of adiabatic expansion in K
dt1=(T3-T4i)//Isentropic temperature rise in K
adt1=(dt1/(nt/100))//Actual temperature rise in K
Wt=(Cp*adt1)//Workdone in turbine in kcal/kg of air
N=(Wt-Wc)//Net workdone in kcal/kg of air
w=(NHP*75)/(427*9.8)//Flow rate in kg of air per sec

//Output
printf('Flow rate is %3.2f kg of air per sec',w)
