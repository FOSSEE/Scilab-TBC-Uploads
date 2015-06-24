// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 9 Example 4")
T3=1200;//maximum temperature in K
T1=300;//minimum temperature in K
y=1.4;//expansion constant
Cp=1.005;//specific heat at constant pressure in KJ/kg K
disp("optimum pressure ratio for maximum work output,")
disp("rp=(T_max/T_min)^((y)/(2*(y-1)))")
T_max=T3;
T_min=T1;
rp=(T_max/T_min)^((y)/(2*(y-1)))
disp("so p2/p1=11.3,For process 1-2, T2/T1=(p2/p1)^(y/(y-1))")
disp("so T2=T1*(p2/p1)^((y-1)/y)in K")
T2=T1*(rp)^((y-1)/y)
disp("For process 3-4,")
disp("T3/T4=(p3/p4)^((y-1)/y)=(p2/p1)^((y-1)/y)")
disp("so T4=T3/(rp)^((y-1)/y)in K")
T4=T3/(rp)^((y-1)/y)
disp("heat supplied,Q23=Cp*(T3-T2)in KJ/kg")
Q23=Cp*(T3-T2)
disp("compressor work,Wc=Cp*(T2-T1)in KJ/kg")
Wc=Cp*(T2-T1)
disp("turbine work,Wt=Cp*(T3-T4)in KJ/kg")
Wt=Cp*(T3-T4)
disp("thermal efficiency=net work/heat supplied=(Wt-Wc)/Q23")
(Wt-Wc)/Q23
disp("so compressor work=301.5 KJ/kg,turbine work=603 KJ/kg,thermal efficiency=50%")
