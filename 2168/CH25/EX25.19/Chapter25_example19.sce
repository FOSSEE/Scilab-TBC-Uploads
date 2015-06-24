clc
clear
//Input data
p1=1//Inlet pressure of compressor in atm
T1=27+273//Inle temperature of compressor in K
ic=0.8//Isentropic efficiency of compressor
ma=20.5//Mass flow rate of air in kg/sec
T3=650+273//Inlet temperatures of both turbines in K
p2=5//Inlet pressure of turbine in atm
it=0.92//Internal engine efficiency for both the turbines
CV=10000//Calorific value in kcal/kg
Cpa=0.24//Specific heat at constant pressure of air in kJ/kg.K
ga=1.4//Ratio of specific heats for air
Cpg=0.276//Specific heat at constant pressure of gas in kJ/kg.K
gs=1.33//Ratio of specific heats for gas

//Calculations
T2=(T1*(p2/p1)^((ga-1)/ga))//Temperature in K
T2i=(T1+((T2-T1)/ic))//Temperature in K
T4=(T3/(p2/p1)^((gs-1)/gs))//Temperature in K
T4i=(T3-((T3-T4)*it))//Temperature in K
Wc=(Cpa*(T2i-T1))//Work of compression in kcal/kg of air
We=(Cpg*(T3-T4i))//Work of expansion in kcal/kg of air
mx=(Wc/We)//Gas required per kg of air compressed in kg
F=((Cpa*T2i)-(Cpg*T3))/(Cpg*T3-CV)//Amount of fuel supplied per kg of air in kg
Wg=1+F//Weight of gases per kg of air in kg
Wt=(Wg-mx)//Gases supplied to turbine in kg
Ot=((Wt*ma*427*We)/75)//Output of turbine in H.P
nth=((Wt*We)/(CV*F))*100//Thermal efficiency in percent

//Output
printf('Output is %3.0f H.P \n Thermal efficiency is %3.2f percent',Ot,nth)
