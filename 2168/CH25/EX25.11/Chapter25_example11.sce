clc
clear
//Input data
rp=5//Pressure ratio
T3=580+273//Temperature of gas at the inlet of the turbine in K
p1=1.03//Inlet air pressure in kg/cm^2
T1=15+273//Inlet temperature of air in K
nc=80//Isentropic efficiency of compressor in percent
no=18//Overall efficiency of the plant in percent
Cpa=0.239//Specific heat of air at constant pressure in kJ/kg.K
Cpg=0.261//Specific heat of gas at constant pressure in kJ/kg.K
R=29.27//haracteristic gas constant in kg.m/kg.K
g=1.4//Ratio of specific heats for air
g1=1.355//Ratio of specific heats for gas

//Calculations
T2=(T1*rp^((g-1)/g))//Temperature of air at the end of adiabatic compression in K
T2i=(T1+((T2-T1)/(nc/100)))//Temperature of air at the end of actual compression in K
q=(Cpg*(T3-T2i))//Heat supplied in kcal/kg of air
Wc=(Cpa*(T2i-T1))//Workdone in compressor in kcal/kg of air
Wt=((no/100)*q)+Wc//Turbine work output in kcal/kg of air
T4i=(T3-(Wt/Cpg))//Temperature of air at the end of actual expansion in K
T4=(T3/rp^((g1-1)/g1))//Temperature of air at the end of adiabatic expansion in K
nt=((T3-T4i)/(T3-T4))*100//Isentropic efficiency of turbine in percent

//Output
printf('Isentropic efficiency of turbine is %3.1f percent',nt)
