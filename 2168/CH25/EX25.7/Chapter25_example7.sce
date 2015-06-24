clc
clear
//Input data
pt1=[1,15+273]//Pressure and temperature at the inlet of compressor in kg/cm^2 and K respectively
pt3=[4,650+273]//Pressure and temperature at the inlet of turbine in kg/cm^2 and K respectively
n=[85,80]//Isentropic efficiencies of turbine and compressor respectively in percent
g=1.4//Ratio of specific heats
Cp=0.24//Specific heat at constant pressure in kJ/kg.K

//Calculations
T2=(pt1(2)*(pt3(1)/pt1(1))^((g-1)/g))//Temperature at the end of adiabatic compression in K
T2i=(pt1(2)+((T2-pt1(2))/(n(2)/100)))//Temperature at the end of actual compression in K
T4=(pt3(2)/(pt3(1)/pt1(1))^((g-1)/g))//Temperature at the end of adiabatic expansion in K
T4i=(pt3(2)-((pt3(2)-T4)*(n(1)/100)))//Temperature at the end of actual expansion in K
Wt=(Cp*(pt3(2)-T4i))//Workdone in turbine in kcal/kg of air
Wc=(Cp*(T2i-pt1(2)))//Workdone in compressor in kcal/kg of air
N=(Wt-Wc)//Net workdone in kcal/kg of air
q=(Cp*(pt3(2)-T2i))//Heat supplied in kcal/kg of air
nt=(N/q)*100//Thermal efficiency in percent

//Output
printf('Thermal efficiency of the cycle is %3.2f percent',nt)
