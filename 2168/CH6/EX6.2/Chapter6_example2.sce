clc
clear
//Input data
//Data from combustion chart
p=[1,33,33,1]//Pressure of air fuel mixture in kg/cm^2
T=[65,600,1450,725]//Temperature of air fuel mixture in K
V=[16,1.23,3.45,16]//Volume in m^3/kg
U=[11.8,110,295,140]//Internal energy in kcal/kg
H=[22.7,150,395,225]//Enthalpy in kcal/kg
S=[0.068,0.068,0.264,0.264]//Entropy in kcal/kg.degree C

//Calculations
r=(V(1)/V(2))//Compression ratio
q=(H(3)-H(2))//Heat supplied in kcal/kg
qre=(U(4)-U(1))//Heat rejected in kcal/kg
nt=((q-qre)/q)*100//Thermal efficiency in percent

//Output
printf('(a)Compression ratio is %3.0f \n (b) Heat supplied to the cycle is %3.0f kcal/kg \n (c) Heat rejected by the cycle is %3.2f kcal/kg \n (d) Thermal efficiency is %3.2f percent',r,q,qre,nt)
