clc
clear
//Input data
p1=1//Inlet air pressure in kg/cm^2
T1=16+273//Inlet temperature of air in K
rp=3.5//Pressure ratio
nc=85//Isentropic efficiency of the compressor in percent
T3=500+273//Temperature of the gas entering the turbine in K
nt=80//Isentropic efficiency of the turbine in percent
mc=4//Mass of air entering the compressor in tonnes/hour
g=1.4//Ratio of specific heats
Cp=0.24//Specific heat at constant pressure in kJ/kg.K

//Calculations
T2=(T1*rp^((g-1)/g))//Temperature of air at the end of adiabatic compression in K
dt=(T2-T1)//Isentropic temperature rise in K
adt=(dt/(nc/100))//Actual temperature rise in K
T2i=(T1+((T2-T1)/(nc/100)))//Temperature of air at the end of actual compression in K
T4=(T3/rp^((g-1)/g))//Temperature of air at the end of adiabatic compression in K
T4i=(T3-((T3-T4)*(nt/100)))//Temperature of air at the end of actual compression in K
Wt=(Cp*(T3-T4i))//Workdone in turbine in kcal/kg of air
Wc=(Cp*(T2i-T1))//Workdone in compressor in kcal/kg of air
N=(Wt-Wc)//Net workdone in kcal/kg of air
q=(Cp*(T3-T2i))//Heat supplied in kcal/kg of air
NHP=(N*427*mc*1000)/(60*4500)//Net Horse Power available in H.P
nt=(N/q)*100//Thermal efficiency in percent

//Output
printf('(i) The net Horse power available from this unit is %3.1f H.P \n (ii) The thermal efficiency of the plant is %3.2f percent',NHP,nt)
