clc
clear
//Input data
nc=75//Isentropic efficiency of the compressor in percent
nt=85//Isentropic efficiency of the turbine in percent
nm=98//Mechanical efficiency in percent
rp=6//Pressure ratio
T3=727+273//Temperature of the gas entering the turbine in K
p1=1//Inlet air pressure in kg/cm^2
T1=15.5+273//Inlet temperature of air in K
m=2.2//Mass flow rate in kg/sec
Cpa=0.24//Specific heat of air at constant pressure in kJ/kg.K
Cpg=0.276//Specific heat of gas at constant pressure in kJ/kg.K
g=1.4//Ratio of specific heats for air
g1=1.33//Ratio of specific heats for gas

//Calculations
T2=(T1*rp^((g-1)/g))//Temperature of air at the end of adiabatic compression in K
T2i=(T1+((T2-T1)/(nc/100)))//Temperature of air at the end of actual compression in K
T4=(T3/rp^((g1-1)/g1))//Temperature of air at the end of adiabatic compression in K
T4i=(T3-((T3-T4)*(nt/100)))//Temperature of air at the end of actual compression in K
Wt=(Cpg*(T3-T4i))//Workdone in turbine in kcal/kg of air
Wc=(Cpa*(T2i-T1))//Workdone in compressor in kcal/kg of air
N=(Wt-Wc)//Net workdone in kcal/kg of air
P=(N*m*427)/(75*(nm/100))//Power output of the plant in H.P

//Output
printf('Power output of the plant is %3.0f H.P',P)
