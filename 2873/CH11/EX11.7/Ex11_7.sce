// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 11 Example 7")
p1=1.2*10^5;//pressure of ram air in pa
p6=p1;
T1=(15+273);//temperature of ram air in K
T6=T1;
p7=0.9*10^5;//pressure of ram air after expansion in pa
p3=4*10^5;//pressure of ram air after compression in pa
p2=p3;
p4=1*10^5;//pressure of ram air after expansion in second turbine in pa
T5=(25+273);//temperature of air when exhausted  from cabin in K
T3=(50+273);//temperature of compressed air in K
T8=(30+273);//limited temperaure of ram air in K
Q=10*3.5;//refrigeration capacity in KJ/s
Cp=1.005;//specific heat capacity at constant pressure in KJ/kg K
disp("for process 1-2,n=1.45")
n=1.45;
disp("T2/T1=(p2/p1)^((n-1)/n)")
disp("so T2=T1*(p2/p1)^((n-1)/n) in K")
T2=T1*(p2/p1)^((n-1)/n)
disp("for process 3-4,n=1.3")
n=1.3;
disp("T4/T3=(p4/p3)^((n-1)/n)")
disp("so T4=T3*(p4/p3)^((n-1)/n)in K")
T4=T3*(p4/p3)^((n-1)/n)
disp("refrigeration effect in passenger cabin with m kg/s mass flow rate of air.")
disp("Q=m*Cp*(T5-T4)")
disp("m=Q/(Cp*(T5-T4))in kg/s")
m=Q/(Cp*(T5-T4))
disp("so air mass flow rate in cabin=0.55 kg/s")
disp("let the mass flow rate through intercooler be m1 kg/s then the energy balance upon intercooler yields,")
disp("m1*Cp*(T8-T7)=m*Cp*(T2-T3)")
disp("during process 6-7,T7/T6=(p7/p6)^((n-1)/n)")
disp("so T7=T6*(p7/p6)^((n-1)/n) in K")
T7=T6*(p7/p6)^((n-1)/n)
disp("substituting T2,T3,T7,T8 and m in energy balance on intercooler,")
disp("m1=m*(T2-T3)/(T8-T7)in kg/s")
m1=m*(T2-T3)/(T8-T7)
disp("total ram air mass flow rate=m+m1 in kg/s")
m+m1
disp("ram air mass flow rate=2.12 kg/s")
disp("work input to compressor(W)=m*Cp*(T2-T1)in KJ/s")
m=0.55;//approx.
W=m*Cp*(T2-T1)
disp("COP=refrigeration effect/work input=Q/W")
COP=Q/W








