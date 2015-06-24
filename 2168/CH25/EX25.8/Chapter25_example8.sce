clc
clear
//Input data
p1=1.03//Inlet air pressure in kg/cm^2
T1=15.5+273//Inlet temperature of air in K
rp=5//Compression ratio
nc=85//Isentropic efficiency of the compressor in percent
T3=540+273//Temperature of the gas entering the turbine in K
p3=1.03//Pressure of gas entering the turbine in kg/cm^2
nt=80//Isentropic efficiency of the turbine in percent
O=2500//Net output in H.P
fp=0.07//Fall of pressure through the combustion chamber in kg/cm^2
g=1.4//Ratio of specific heats for both air and gas
Cp=0.24//Specific heat at constant pressure in kJ/kg.K for both air and gas

//Calculations
T2=(T1*rp^((g-1)/g))//Temperature of air at the end of adiabatic compression in K
T2i=(T1+((T2-T1)/(nc/100)))//Temperature of air at the end of actual compression in K
T4=(T3/((rp*p3-fp)/p3)^((g-1)/g))//Temperature of air at the end of adiabatic compression in K
T4i=(T3-((T3-T4)*(nt/100)))//Temperature of air at the end of actual compression in K
Wt=(Cp*(T3-T4i))//Workdone in turbine in kcal/kg of air
Wc=(Cp*(T2i-T1))//Workdone in compressor in kcal/kg of air
N=(Wt-Wc)//Net workdone in kcal/kg of air
Fl=(O*4500)/(427*N*60)//Flow rate for 2500 H.P in kg/sec

//Output
printf('Flow rate of air is %3.1f kg/sec for a net output of %i H.P',Fl,O)
