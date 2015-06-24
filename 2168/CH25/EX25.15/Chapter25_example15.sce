clc
clear
//Input data
p1=1//Initial pressure in kg/cm^2
T1=15+273//Initial temperature in K
p2=5.5//Pressure after compression in kg/cm^2
T3=750+273//Temperature at the entrance of turbine in K
v=225//Speed in m/s
x=70//Percentage
in=75//Isentropic efficiency of compressor in percent
Cp=0.24//Specific heat at constant pressure in kJ/kg.K
g=1.4//Ratio of specific heats

//Calculations
T2=(T1*(p2/p1)^((g-1)/g))//Temperature in K
at=(T2-T1)/(in/100)//Actual temperature rise in the compressor in K
T2i=(T1+at)//Temperature in K
T4=(T3/(p2/p1)^((g-1)/g))//Temperature in K
to=(Cp*(T3-T4))//Theoritical turbine output in kcal/kg of air
ci=(Cp*(T2i-T1))//Actual compressor input in kcal/kg of air
ke=(v^2/(2*9.81*427))//Kinetic energy in gas leaving the exhaust annulus in kcal/kg
dT34=(ci+ke)/((x/100)*Cp)//Change in temperature in K
r=1/(1-(dT34/T3))^(g/(g-1))//Ratio of pressures
p4=(r/p2)//Pressure in kg/cm^2

//Output
printf('The pressure of the gases in the turbine exhaust annulus is %3.1f kg/cm^2',p4)
