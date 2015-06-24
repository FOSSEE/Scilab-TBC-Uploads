// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 9 Example 12")
P1=1*10^5;//initial pressure in Pa
P9=P1;
T1=300;//initial temperature in K
P2=4*10^5;//pressure of air in intercooler in Pa
P3=P2;
T3=290;//temperature of air in intercooler in K
T6=1300;//temperature of combustion chamber in K
P4=8*10^5;//pressure of air after compression in Pa
P6=P4;
T8=1300;//temperature after reheating in K
P8=4*10^5;//pressure after expansion in Pa
P7=P8;
C=42000;//heating value of fuel in KJ/kg
y=1.4;//expansion constant
ne=0.8;//effectiveness of regenerator
Cp=1.0032;//specific heat at constant pressure in KJ/kg K
disp("for process 1-2,")
disp("T2/T1=(P2/P1)^((y-1)/y)")
disp("so T2=T1*(P2/P1)^((y-1)/y) in K")
T2=T1*(P2/P1)^((y-1)/y)
disp("for process 3-4,")
disp("T4/T3=(P4/P3)^((y-1)/y)")
disp("so T4=T3*(P4/P3)^((y-1)/y) in K")
T4=T3*(P4/P3)^((y-1)/y)
disp("for process 6-7,")
disp("T7/T6=(P7/P6)^((y-1)/y)")
disp("so T7=T6*(P7/P6)^((y-1)/y) in K")
T7=T6*(P7/P6)^((y-1)/y)
disp("for process 8-9,")
disp("T9/T8=(P9/P8)^((y-1)/y)")
disp("T9=T8*(P9/P8)^((y-1)/y) in K")
T9=T8*(P9/P8)^((y-1)/y)
disp("in regenerator,effectiveness=(T5-T4)/(T9-T4)")
disp("T5=T4+(ne*(T9-T4))in K")
T5=T4+(ne*(T9-T4))
disp("compressor  work per kg air,Wc=Cp*(T2-T1)+Cp*(T4-T3) in KJ/kg")
Wc=Cp*(T2-T1)+Cp*(T4-T3)
disp("turbine work per kg air,Wt=Cp*(T6-T7)+Cp*(T8-T9)in KJ/kg")
Wt=Cp*(T6-T7)+Cp*(T8-T9)
disp("heat added per kg air,q_add=Cp*(T6-T5)+Cp*(T8-T7)in KJ/kg")
q_add=Cp*(T6-T5)+Cp*(T8-T7)
disp("total fuel required per kg of air=q_add/C")
q_add/C
disp("net work,W_net=Wt-Wc in KJ/kg")
W_net=Wt-Wc
disp("cycle thermal efficiency,n=W_net/q_add")
n=W_net/q_add
disp("in percentage")
n=n*100
disp("fuel required per kg air in combustion chamber 1,Cp*(T8-T7)/C")
Cp*(T8-T7)/C
disp("fuel required per kg air in combustion chamber2,Cp*(T6-T5)/C")
Cp*(T6-T5)/C
disp("so fuel-air ratio in two combustion chambers=0.0126,0.0056")
disp("total turbine work=660.85 KJ/kg")
disp("cycle thermal efficiency=58.9%")
disp("NOTE=>In this question,fuel required per kg air in combustion chamber 1 and 2 are calculated wrong in book,so it is corrected above and answers vary accordingly. ")

