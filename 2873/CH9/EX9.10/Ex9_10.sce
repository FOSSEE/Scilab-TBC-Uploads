// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 9 Example 10")
T1=(27+273);//temperature of air in compressor in K
p1=1*10^5;//pressure of air in compressor in Pa
p2=5*10^5;//pressure of air after compression in Pa
p3=p2-0.2*10^5;//pressure drop in Pa
p4=1*10^5;//pressure to which expansion occur in turbine in Pa
nc=0.85;//isentropic efficiency
T3=1000;//temperature of air in combustion chamber in K
n=0.2;//thermal efficiency of plant
y=1.4;//expansion constant
Cp=1.0032;//specific heat at constant pressure in KJ/kg K
disp("for process 1-2_a")
disp("T2_a/T1=(p2_a/p1)^((y-1)/y)")
disp("so T2_a=T1*(p2_a/p1)^((y-1)/y) in K")
T2_a=T1*(p2/p1)^((y-1)/y)
disp("nc=(T2_a-T1)/(T2-T1)")
disp("so T2=T1+((T2_a-T1)/nc) in K")
T2=T1+((T2_a-T1)/nc)
disp("for process 3-4_a,")
disp("T4_a/T3=(p4/p3)^((y-1)/y)")
disp("so T4_a=T3*(p4/p3)^((y-1)/y)in K")
T4_a=T3*(p4/p3)^((y-1)/y)
disp("Compressor work per kg,Wc=Cp*(T2-T1) in KJ/kg")
Wc=Cp*(T2-T1)
disp("Turbine work per kg,Wt=Cp*(T3-T4)in KJ/kg")
disp("net output,W_net=Wt-Wc={Wc-(Cp*(T3-T4))} in KJ/kg")
disp("heat added,q_add=Cp*(T3-T2) in KJ/kg")
q_add=Cp*(T3-T2)
disp("thermal efficiency,n=W_net/q_add")
disp("n={Wc-(Cp*(T3-T4))}/q_add")
disp("so T4=T3-((Wc-(n*q_add))/Cp)in K")
T4=T3-((Wc-(n*q_add))/Cp)
disp("therefore,isentropic efficiency of turbine,nt=(T3-T4)/(T3-T4_a)")
nt=(T3-T4)/(T3-T4_a)
disp("in percentage")
nt=nt*100
disp("so turbine isentropic efficiency=29.69%")
