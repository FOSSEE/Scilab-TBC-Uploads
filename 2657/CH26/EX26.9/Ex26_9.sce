//Calculations on Helium gas turbine
clc,clear
//Given:
P1=4,P2=16 //Pressure at entering and leaving of compressor in bar
T1=320,T2=590 //Temperature at entering and leaving of compressor in K
e=70 //Effectiveness of heat exchanger in percent
P3=15.5,P4=4.2 //Pressure at entering and leaving of turbine in bar
T3=1400,T4=860 //Temperature at entering and leaving of turbine in K
P=100 //Net power output in MW
cp_h=5.2 //Specific heat of helium in kJ/kgK
g_h=1.67 //Specific heat ratio(gamma) for helium
//Solution:
//Refer fig 26.32, 26.33
T2!=T1*(P2/P1)^((g_h-1)/g_h) //Isentropic temperature at 2 in K
eta_C=(T2!-T1)/(T2-T1) //Compressor efficiency
T4!=T3/(P3/P4)^((g_h-1)/g_h) //Isentropic temperature at 4 in K
eta_T=(T3-T4)/(T3-T4!) //Turbine efficiency
Tx=T2+(T4-T2)*e/100 //Temperature at leaving of regenerator in K
Q1=cp_h*(T3-Tx) //Heat supplied in kJ/kg
W_T=cp_h*(T3-T4) //Turbine work in kJ/kg
W_C=cp_h*(T2-T1) //Compressor work in kJ/kg
W=W_T-W_C //Work output in kJ/kg
eta=W/Q1 //Cycle efficiency
T5=T4-(Tx-T2) //Temperature at 5 in K
Qout=cp_h*(T5-T1) //Heat rejected in precooler in kJ/kg
m_h=P*1000/W //Helium flow rate in kg/s
//Results:
printf("\n (a)The compressor efficiency, eta_C = %.3f\n\tThe turbine efficiency, eta_T = %.3f",eta_C,eta_T)
printf("\n (b)The thermal efficiency of the cycle, eta = %.1f percent",eta*100)
printf("\n (c)The heat rejected in the cooler before compressor, Qout = %.1f kJ/kg",Qout)
printf("\n (d)The helium flow rate for the net power output of 100 MW, m = %.2f kg/s\n\n",m_h)
