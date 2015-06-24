clc
clear
//Input data
p=[1,5]//Pressures in atm
T1=288//Temperature in K
T3=650+273//Temperature in K
er=0.85//Efficiency ratio
x=0.72//Effectiveness of heat exchanger
Cp=0.24//Specific heat at constant pressure in kJ/kg.K
g=1.4//Ratio of specific heats

//Calculations
T2=(T1*(p(2)/p(1))^((g-1)/g))//Temperature in K
T2i=(T1+((T2-T1)/er))//Temperature in K
T4=(T3/(p(2)/p(1))^((g-1)/g))//Temperature in K
T4i=(T3-(er*(T3-T4)))//Temperature in K
Tc=((x*(T4i-T2i))+T2i)//Temperature in K
W=((Cp*((T3-T4i)-(T2i-T1))))//Workdone in kcal/kg
q=(Cp*(T3-Tc))//Heat supplied in kcal/kg
n=(W/q)*100//Efficiency in percent

//Output
printf('The heat efficiency of the plant is %3.1f percent',n)
