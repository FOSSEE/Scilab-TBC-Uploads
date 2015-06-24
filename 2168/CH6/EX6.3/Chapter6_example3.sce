clc
clear
//Input data
//Data from combustion chart
p=[1,51.5,77.25,77.25,3.75]//Pressure of air fuel mixture in kg/cm^2
T=[16,1,1,1.5,16]//Temperature of air fuel mixture in K
V=[65,745,1400,2200,1030]//Volume in m^3/kg
U=[14.7,135,275,475,197]//Internal energy in kcal/kg
H=[21.9,85,372,625,280]//Enthalpy in kcal/kg
S=[0.068,0.068,0.19,0.32,0.32]//Entropy in kcal/kg.degree C

//Calculations
nth=(((U(3)-U(2))+(H(4)-H(3))-(U(5)-U(1)))/((U(3)-U(2))+(H(4)-H(3))))*100//Thermal efficiency in percent

//Output
printf('Thermal efficiency is %3.2f percent',nth)
