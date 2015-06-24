clc
clear
//input data
P=5//Pressure ratio in the process
ntt=0.8//Total-to-total efficiency of the process
m=5//Air flow rate through turbine in kg/s
W=500//Total power output from the turbine in kW
r=1.4//ratio of specific heats for air
Cp=1.005*10^3//specific at heat at constant pressure in J/kg.K
C2=100//Flow velocity of air in m/s

//calculations
T=(W*10^3)/(m*Cp)//Total change in temperature in the process in K
T02s=(1/P)^((r-1)/r)//Isentropic temperature at the outlet from turvine in (K*T01)
T01=(T/ntt)*(1/(1-0.631))//Inlet total temperature in K
T02=T01-T//Actual exit total temperature in K
T2=T02-((C2^2)/(2*Cp))//Actual exit static temperature in K
T02s1=T02s*T01//Isentropic temperature at the outlet from turbine in K
T2s=T02s1-((C2^2)/(2*Cp))//Actual isentropic temperature in K
nts=(T/(T01-T2s))//Total-to-static efficiency

//output
printf('(a)The inlet total temperature is %i K\n(b)The actual exit total temperature is %3.1f K\n(c)The actual exit static temperature is %3.1f K\n(d)The total-to-static efficiency is %3.4f',T01,T02,T2,nts)
