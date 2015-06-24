

clc
clear
//Input data
a=14;//Air fuel ratio 
T1=288;//The ambient temperature of air in K
T2=(288-23);//The evaporation of fuel cause 23 degree C drop in mixture temperature in K
p=1.3;//Pressure ratio 
nc=75;//The isentropic efficiency of the compressor in percent
Cpm=1.05;//The specific heat of the mixture in kJ/kgK
Cpa=1;//The specific heat of air in kJ/kgK
g=1.33;//Adiabatic index
h=1.4;//Isentropic index
ma=1;//Mass flow rate of air in kg/s

//Calculations
T31=T2*p^((g-1)/g);//Temperature at point 3' in K
T3=T2+((T31-T2)/(nc/100));//Temperature of the gas after compressor in K
mm=1+(1/a);//Mass flow rate of mixture in kg/s
Wc1=mm*Cpm*(T3-T2);//Power required by the compressor in kW/kg of air per second
T21=T1*p^((h-1)/h);//Temperature at point 2' in K
T4=T1+((T21-T1)/(nc/100));//The temperature after leaving the compressor in K
Wc2=ma*Cpa*(T4-T1);//Power required by the compressor in kW/kg of air per second
T5=T4-23;//Temperature of the gas after carburettor in K
Ps=[(Wc2-Wc1)*100]/Wc2;//Saving of power in the first case in percent

//Output
printf('(a) The power required by the compressor for carburettor placed before the supercharger = %3.2f kW/kg of air per second \n (b) The power required by the compressor for carburettor placed after the supercharger = %3.2f kW/kg of air per second \n Percentage of turbine power used to run the compressor = %3.1f percent ',Wc1,Wc2,Ps)

//Error .The reason for variation in the result compared to the textbook is that , in the textbook Wc1 value is rounded of to the nearest integer and Wc2 value has small decimal error so the final result is slightly higher 


