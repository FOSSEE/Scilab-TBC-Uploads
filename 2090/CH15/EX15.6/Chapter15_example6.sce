clc
clear
//Input data
p1=0.98;//The inlet pressure of air in bar
T1=290;//The inlet temperature of air in K
p2=1.8;//The pressure of air delivered to the engine in bar
a=20;//The air fuel ratio 
T3=850;//The temperature of the exhaust gases leaving the engine in K
p3=1.6;//The pressure of the exhaust gases leaving the engine in bar
p4=1.03;//The turbine exhaust pressure in bar
nc=80;//The isentropic efficiency of compressor in percent
nt=85;//The isentropic efficiency of turbine in percent
Cpa=1.005;//The specific heat of air in kJ/kgK
Cpg=1.15;//The specific heat of gas in kJ/kgK
g=1.33;//isentropic index
h=1.4;//Adiabatic index

//Calculations
T21=T1*(p2/p1)^((h-1)/h);//The temperature at point 2' for compressor in K
T2=T1+((T21-T1)/(nc/100));//The temperature of air leaving the compressor in K
T22=T2-273;//The temperature of air leaving the compressor in degree centigrade
T41=T3*(p4/p3)^((g-1)/g);//The temperature at point 4' for turbine in K
T4=T3-((nt/100)*(T3-T41));//The temperature of gas leaving the turbine in K
T44=T4-273;//The temperature of gas leaving the turbine in degree centigrade
mf=1;//Assume mass flow rate of fuel in kg/s
ma=mf*a;//Then the mass flow rate of air in kg/s
Wc=ma*Cpa*(T2-T1);//Power required by the compressor in kW
mg=ma+mf;//Mass flow rate of gas in kg/s
Wt=mg*Cpg*(T3-T4);//Power developed by the turbine in kW
Pt=(Wc/Wt)*100;//Percentage of turbine power used to run the compressor in percent

//Output
printf('(a) The temperature of the air leaving the compressor = %3.0f degree centigrade \n (b) The temperature of gases leaving the turbine = %3.0f degree centigrade \n (c) The mechanical power used to run the turbocharger, when expressed as a percentage of power generated in the turbine = %3.1f percent ',T22,T44,Pt)
