clc
rp = 6 // pressure ratio
g = 1.4 // Heat capacity ratio
cv = 0.718 // Constant volume heat capacity
cp = 1.005 //Constant pressure heat capacity
R = 0.287 // Gas constant
T1 = 300 // Minimum temperature in K
T3 = 1100 // Maximum cycle temperature in K
T0 = 300 // Atmospheric temperature in K
n_cycle = 1-(1/rp^((g-1)/g)) // cycle efficiency
T2 = (T1)*(rp^((g-1)/g)) // Temperature after compression
T4 = (T3)/(rp^((g-1)/g)) // Temperature after expansion
Wc = cp*(T2-T1) // Compressor work
Wt = cp*(T3-T4) // Turbine work
WR = (Wt-Wc)/Wt // Work ratio
Q1 = 100 // Heat addition in MW
PO = n_cycle*Q1 // Power output
m_dot = (Q1*1e06)/(cp*(T3-T2)) // Mass flow rate
R = m_dot*cp*T0*((T4/T0)-1-log(T4/T0)) // Exergy flow rate
printf("\n Example 13.7\n")
printf("\n The thermal efficiency of the cycle is %f percent",n_cycle*100)
printf("\n Work ratio is %f ",WR)
printf("\n Power output is %f MW",PO)
printf("\n Energy flow rate of the exhaust gas stream is %f MW",R/1e6)
//The answers vary due to round off error
