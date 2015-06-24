// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 11 Example 5")
T1=(7+273);//temperature of refrigerated space in K
T3=(27+273);//temperature after compression in K
p1=1*10^5;//pressure of refrigerated space in pa
p2=5*10^5;//pressure after compression in pa
y=1.4;//expansion constant
Cp=1.005;//specific heat at constant pressure in KJ/kg K
disp("for isentropic compression process:")
disp("(p2/p1)^((y-1)/y)=T2/T1")
disp("so T2=T1*(p2/p1)^((y-1)/y) in K")
T2=T1*(p2/p1)^((y-1)/y)
disp("for isenropic expansion process:")
disp("(p3/p4)^((y-1)/y)=(T3/T4)=(p2/p1)^((y-1)/y)")
disp("so T4=T3/(p2/p1)^((y-1)/y) in K")
T4=T3/(p2/p1)^((y-1)/y)
disp("heat rejected during process 2-3,Q23=Cp*(T2-T3)in KJ/kg")
Q23=Cp*(T2-T3)
disp("refrigeration process,heat picked during process 4-1,Q41=Cp*(T1-T4) in KJ/kg")
Q41=Cp*(T1-T4)
disp("so net work(W)=Q23-Q41 in KJ/kg")
W=Q23-Q41
disp("so COP=refrigeration effect/net work=Q41/W")
COP=Q41/W
