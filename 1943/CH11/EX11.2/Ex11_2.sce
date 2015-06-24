
clc
clear
//Input data
p1=0.97//Pressure in bar
t1=30+273//Temperature in K
p2=2.1//Pressure in bar
af=18//Air fuel ratio
t3=580+273//Temperature in K
p3=1.9//Pressure in bar
p4=1.06//Pressure in bar
iec=0.75//Isentropic efficiency of compressor
iet=0.85//Isentropic efficiency of turbine
cpa=1.01//Specific heat for air in kJ/kg.K
ga=1.4//Ratio of specific heats
cpex=1.15//Specific heat in kJ/kg.K
gex=1.33//Ratio of specific heats

//Calculations
t2s=t1*(p2/p1)^((ga-1)/ga)//Tempeature in K
t21=(t2s-t1)/iec//Temperature in K
t2=t21+t1//Temperature in K
T2=t2-273//Temperature in degree C
t3t4s=(p3/p4)^((gex-1)/gex)//Ratio of temperatures
t4s=(t3/t3t4s)//Temperature in K
t4=t3-((t3-t4s)*iet)//Temperature in K
T4=t4-273//Temperature in degree C
mp=(((cpex*(1+(1/af))*(t3-t4))-(cpa*(t2-t1)))/(cpex*(1+(1/af))*(t3-t4)))*100//Percentage of mechanical power loss

//Output
printf('(a) the temperature of air leaving the compressor is %3.2f degree C \n (b) the temperature of gases leaving the turbine is %3.2f degree C \n (c) the mechanical power loss in the turbocharger as a percentage of the power generated in the turbine is %3.2f percent',T2,T4,mp)

