clear;
clc;
Rth_sink=4 //resistance in C/W
Rth_case=1.5 //in C/W
T2=200 //Temperature in C
T1=27 //Room temperature in C
P=20 //power in W

//Calculation
Rth=(T2-T1)/P
Tdev=T2
Tamb=T1
Rth_dp=Rth 
Rth_ps=Rth_case //case-sink resistance
Rth_sa=Rth_sink //sink-ambient resistance
PD=(Tdev-Tamb)/(Rth_dp+Rth_ps+Rth_sa)

mprintf("Actual power dissipation= %2.2f W",PD) //The answers vary due to round off error
