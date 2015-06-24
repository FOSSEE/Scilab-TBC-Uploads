clc
clear
//Input data
p1=1.02//Inlet air pressure in kg/cm^2
T1=27+273//Inlet temperature of air in K
p2=4.08//Pressure after compression in kg/cm^2
nc=80//Isentropic efficiency of compressor in percent
mf=1//Mass of fuel in kg
ma=80//Mass of air in kg
nt=85//Isentropic efficiency of the turbine in percent
CV=10000//Calorific value of fuel n kcal per kg
g=1.4//Ratio of specific heats
Cp=0.24//Specific heat at constant pressure in kJ/kg.K

//Calculations
rp=(p2/p1)//Pressure ratio
T2=(T1*rp^((g-1)/g))//Temperature of air at the end of adiabatic compression in K
dt=(T2-T1)//Isentropic temperature rise in K
adt=(dt/(nc/100))//Actual temperature rise in K
T2i=(T1+((T2-T1)/(nc/100)))//Temperature of air at the end of actual compression in K
q=(mf/ma)*CV//Heat supplied per kg of air in kcal
T3=(q/Cp)+T2i//Temperature of gas at the inlet of the turbine in K
T4=(T3/rp^((g-1)/g))//Temperature of air at the end of adiabatic expansion in K
T4i=(T3-((T3-T4)*(nt/100)))//Temperature of air at the end of actual expansion in K
Wt=(Cp*(T3-T4i)*((ma+mf)/ma))//Workdone in turbine in kcal/kg of air
Wc=(Cp*(T2i-T1))//Workdone in compressor in kcal/kg of air
N=(Wt-Wc)//Net workdone in kcal/kg of air
nt=(N/q)*100//Thermal efficiency in percent

//Output
printf('(a) The net work output of installation is %3.2f kcal/kg of air \n (b) Overall efficiency of the plant is %3.1f percent',N,nt)
