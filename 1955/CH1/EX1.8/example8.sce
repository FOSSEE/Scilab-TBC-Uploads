clc
clear
//input data
P=2.2//Pressure ratio across a gas turbine
n=0.88//Efficiency of a gas turbine
T1=1500//Inlet temperature of the gas in K
r=1.4//ratio of specific heats for air

//calculations
T2s=T1*(1/P)^((r-1)/r)//Isentropic output temperature from gas turbine in K
T2=T1-(n*(T1-T2s))//actual output temperature from gas turbine in K
np=(r/(r-1))*((log10(T1/T2))/(log10(P)))//Polytropic efficiency of the turbine

//output
printf('The polytropic efficiency of the turbine is %3.3f',np)

