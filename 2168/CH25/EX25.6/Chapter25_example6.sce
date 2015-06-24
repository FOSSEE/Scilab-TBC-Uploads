clc
clear
//Input data
p1=5.62//Pressure of gas entering the turbine in kg/cm^2
T1=1000+273//Temperature of gas entering the turbine in K
p2=1.124//Pressure of gas leaving the turbine in kg/cm^2. In textbook it is given as 1.24 instead of 1.124
n1=0.8//Isotropic efficiency of the turbine in ratio
n=1.36//Adiabatic index
Cp=0.25//Specific heat at constant pressure in kJ/kg.K

//Calculations
T2=(T1/(p1/p2)^((n-1)/n))//Temperature at the end of adiabatic expansion in K
dt=(T1-T2)//Isentropic temperature drop in K
adt=(n1*dt)//Actual temperature drop in K
T2i=(T1-adt)//Temperature at the end of actual expansion in K
W=(Cp*(T1-T2i))//Workdone per kg of gas in kcal
q=(W*427)/4500//H.P developed per kg of gas per minute 
t2i=(T2i-273)//Exhaust gas temperature in degree C

//Output
printf('(1) H.P developed per kg of gas per min is %3.2f \n (2) Exhaust gas temperature is %3.1f degree C',q,t2i)
