// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 11 Example 4")
T1=(-30+273);//temperature of air at beginning of compression in K
T3=(27+273);//temperature of air after cooling in K
r=8;//pressure ratio
Cp=1.005;//specific heat at constant pressure in KJ/kg K
y=1.4;//expansion constant 
m=1;//air flow rate in kg/s
n1=0.85;//isentropic efficiency for compression process
n2=.9;//isentropic efficiency for expansion process
disp("during process 1-2_a")
disp("p2/p1=(T2_a/T1)^(y/(y-1))")
disp("so T2_a=T1*(p2/p1)^((y-1)/y)in K")
T2_a=T1*(r)^((y-1)/y)
disp("theoretical temperature after compression,T2_a=440.18 K")
disp("for compression  process,")
disp("n1=(T2_a-T1)/(T2-T1)")
disp("so T2=T1+(T2_a-T1)/n1 in K")
T2=T1+(T2_a-T1)/n1
disp("for expansion process,3-4_a")
disp("T4_a/T3=(p1/p2)^((y-1)/y)")
disp("so T4_a=T3*(p1/p2)^((y-1)/y) in K")
T4_a=T3*(1/r)^((y-1)/y)
disp("n2=0.9=(T3-T4)/(T3-T4_a)")
disp("so T4=T3-(n2*(T3-T4_a))in K")
T4=T3-(n2*(T3-T4_a))
disp("so work during compression,W_C in KJ/s")
disp("W_C=m*Cp*(T2-T1)")
W_C=m*Cp*(T2-T1)
disp("work during expansion,W_T in KJ/s")
disp("W_T=m*Cp*(T3-T4)")
W_T=m*Cp*(T3-T4)
disp("refrigeration effect is realized during process,4-1.so refrigeration shall be,")
disp("Q_ref=m*Cp*(T1-T4) in KJ/s")
Q_ref=m*Cp*(T1-T4)
disp("Q_ref in ton")
Q_ref=Q_ref/3.5
disp("net work required(W)=W_C-W_T in KJ/s")
W=W_C-W_T
disp("COP=Q_ref/(W_C-W_T)")
Q_ref=64.26;
COP=Q_ref/(W_C-W_T)
disp("so refrigeration capacity=18.36 ton or 64.26 KJ/s")
disp("and COP=0.57")
disp("NOTE=>In book this question is solve by taking T1=240 K which is incorrect,hence correction is made above according to question by taking T1=-30 degree celcius or 243 K,so answer may vary slightly.")

