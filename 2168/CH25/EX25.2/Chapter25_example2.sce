clc
clear
//Input data
p=4//Pressure ratio
T3=1000//Turbine inlet temperature in K
T1=15+273//Inlet temperature in K
p1=1//Inlet pressure in kg/cm^2
m=11//Mass flow rate of air in kg/s
Cp=0.24//Specific heat at constant pressure in kJ/kg.K
R=29.27//haracteristic gas constant in kg.m/kg.K
g=1.4//Ratio of specific heats

//Calculations
Pc=(m*R*T1*(p^((g-1)/g)-1))/75//Power consumed by the compressor in H.P
Pt=(m*R*T3*(1-(1/p)^((g-1)/g)))/75//Power consumed by the turbine in H.P
N=(Pt-Pc)//Net output of the plant in H.P. In textbook answer is given wrong
T2=(T1*(p)^((g-1)/g))//Temperature at the end of compression in K
q=(Cp*(T3-T2))//Heat supplied in kcal/kg of air
n=(((N*4500)/427)/(q*m*60))*100//Overall efficiency of the plant in percent

//Output
printf('Horse power developed is %3.0f H.P \n The overall efficiency of the plant is %3.2f percent',N,n)
