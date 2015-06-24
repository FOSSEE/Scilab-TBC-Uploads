// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 9 Example 1")
Cp=1;//specific heat at constant pressure in KJ/kg K
Cv=0.71;//specific heat at constant volume in KJ/kg K
P1=98;//pressure at begining of compression in KPa
T1=(60+273.15);//temperature at begining of compression in K
Q23=150;//heat supplied in KJ/kg
r=6;//compression ratio
R=0.287;//gas constant in KJ/kg K
disp("SI engine operate on otto cycle.consider working fluid to be perfect gas.")
disp("here,y=Cp/Cv")
y=Cp/Cv
y=1.4;//approx.
disp("Cp-Cv=R in KJ/kg K")
R=Cp-Cv
disp("compression ratio,r=V1/V2=(0.15+V2)/V2")
disp("so V2=0.15/(r-1) in m^3")
V2=0.15/(r-1)
disp("so V2=0.03 m^3")
disp("total cylinder volume=V1=r*V2  m^3")
V1=r*V2
disp("from perfect gas law,P*V=m*R*T")
disp("so m=P1*V1/(R*T1) in kg")
m=P1*V1/(R*T1)
m=0.183;//approx.
disp("from state 1 to 2 by P*V^y=P2*V2^y")
disp("so P2=P1*(V1/V2)^y in KPa")
P2=P1*(V1/V2)^y
disp("also,P1*V1/T1=P2*V2/T2")
disp("so T2=P2*V2*T1/(P1*V1)in K")
T2=P2*V2*T1/(P1*V1)
disp("from heat addition process 2-3")
disp("Q23=m*CV*(T3-T2)")
disp("T3=T2+(Q23/(m*Cv))in K")
T3=T2+(Q23/(m*Cv))
disp("also from,P3*V3/T3=P2*V2/T2")
disp("P3=P2*V2*T3/(V3*T2) in KPa")
V3=V2;//constant volume process
P3=P2*V2*T3/(V3*T2) 
disp("for adiabatic expansion 3-4,")
disp("P3*V3^y=P4*V4^y")
disp("and V4=V1")
V4=V1;
disp("hence,P4=P3*V3^y/V1^y in KPa")
P4=P3*V3^y/V1^y
disp("and from P3*V3/T3=P4*V4/T4")
disp("T4=P4*V4*T3/(P3*V3) in K")
T4=P4*V4*T3/(P3*V3)
disp("entropy change from 2-3 and 4-1 are same,and can be given as,")
disp("S3-S2=S4-S1=m*Cv*log(T4/T1)")
disp("so entropy change,deltaS_32=deltaS_41 in KJ/K")
deltaS_32=m*Cv*log(T4/T1)
deltaS_41=deltaS_32;
disp("heat rejected,Q41=m*Cv*(T4-T1) in KJ")
Q41=m*Cv*(T4-T1)
disp("net work(W)=Q23-Q41 in KJ")
W=Q23-Q41
disp("efficiency(n)=W/Q23")
n=W/Q23
disp("in percentage")
n=n*100
disp("mean effective pressure(mep)=work/volume change=W/0.15 in KPa")
mep=W/0.15
disp("so mep=511.67 KPa")




