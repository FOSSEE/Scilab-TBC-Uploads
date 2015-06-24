clc
clear
//input data
P=11//Overall pressure ratio in three stages of a gas turbine
nt=0.88//Overall efficiency in three stages of a gas turbine
T1=1500//Temperature at inlet of a gas turbine in K
r=1.4//ratio of specific heats for air

//calculations
T0=nt*T1*(1-(1/P)^((r-1)/r))//Overall change in temperature in all stages in K
TN1=T1-T0//Temperature at final stage of a gas turbine in K
np=((r/(r-1))*log10(T1/TN1))/(log10(P))//Overall polytropic efficiency of the gas turbine
Ts=T0/3//Individual stage change in temperature in K
T2=T1-Ts//Exit temperature at the end of first stage in K
P1=(T1/T2)^(r/(np*(r-1)))//Pressure ratio at first stage of gas turbine 
ns1=((1-(1/P1)^((np*(r-1))/r))/(1-(1/P1)^((r-1)/r)))//Stage efficiency of first stage 
T3=T2-Ts//Exit temperature at the end of second stage in K
P2=(T2/T3)^(r/(np*(r-1)))//Pressure ratio at second stage of gas turbine
ns2=((1-(1/P2)^((np*(r-1))/r))/(1-(1/P2)^((r-1)/r)))//Stage efficiency of second stage
T4=T3-Ts//Exit temperature at the end of third stage in K
P3=(T3/T4)^(r/(np*(r-1)))//Pressure ratio at the third stage of gas turbine
ns3=((1-(1/P3)^((np*(r-1))/r))/(1-(1/P3)^((r-1)/r)))//Stage efficiency of third stage

//output
printf('(a)The values for first stage are\n    (1)Pressure ratio is %3.2f\n    (2)stage efficiency is %3.4f\n(b)The values of second stage are\n    (1)Pressure ratio is %3.3f\n    (2)Stage efficiency is %3.3f\n(c)The values of third stage are\n    (1)Pressure ratio is %3.2f\n    (2)Stage efficiency is %3.4f\n',P1,ns1,P2,ns2,P3,ns3)
