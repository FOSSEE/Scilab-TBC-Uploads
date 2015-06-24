// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 9 Example 11")
P1=1*10^5;//initial pressure in Pa
T1=(27+273);//initial temperature in K
T3=T1;
r=10;//pressure ratio
T5=1000;//maximum temperature in cycle in K
P6=3*10^5;//first stage expansion pressure in Pa
T7=995;//first stage reheated temperature in K
C=42000;//calorific value of fuel in KJ/kg
Cp=1.0032;//specific heat at constant pressure in KJ/kg K
m=30;//air flow rate in kg/s
nc=0.85;//isentropic efficiency of compression
ne=0.9;//isentropic efficiency of expansion
y=1.4;//expansion constant
disp("for perfect intercooling the pressure ratio of each compression stage(k)")
disp("k=sqrt(r)")
k=sqrt(r)
k=3.16;//approx.
disp("for process 1-2_a,T2_a/T1=(P2/P1)^((y-1)/y)")
disp("so T2_a=T1*(k)^((y-1)/y)in K")
T2_a=T1*(k)^((y-1)/y)
disp("considering isentropic efficiency of compression,")
disp("nc=(T2_a-T1)/(T2-T1)")
disp("so T2=T1+((T2_a-T1)/nc)in K")
T2=T1+((T2_a-T1)/nc)
disp("for process 3-4,")
disp("T4_a/T3=(P4/P3)^((y-1)/y)")
disp("so T4_a=T3*(P4/P3)^((y-1)/y) in K")
T4_a=T3*(k)^((y-1)/y)
disp("again due to compression efficiency,nc=(T4_a-T3)/(T4-T3)")
disp("so T4=T3+((T4_a-T3)/nc)in K")
T4=T3+((T4_a-T3)/nc)
disp("total compressor work,Wc=2*Cp*(T4-T3) in KJ/kg")
Wc=2*Cp*(T4-T3)
disp("for expansion process 5-6_a,")
disp("T6_a/T5=(P6/P5)^((y-1)/y)")
disp("so T6_a=T5*(P6/P5)^((y-1)/y) in K")
P5=10*10^5;//pressure in Pa
T6_a=T5*(P6/P5)^((y-1)/y)
disp("considering expansion efficiency,ne=(T5-T6)/(T5-T6_a)")
disp("T6=T5-(ne*(T5-T6_a)) in K")
T6=T5-(ne*(T5-T6_a))
disp("for expansion in 7-8_a")
disp("T8_a/T7=(P8/P7)^((y-1)/y)")
disp("so T8_a=T7*(P8/P7)^((y-1)/y) in K")
P8=P1;//constant pressure process
P7=P6;//constant pressure process
T8_a=T7*(P8/P7)^((y-1)/y)
disp("considering expansion efficiency,ne=(T7-T8)/(T7-T8_a)")
disp("so T8=T7-(ne*(T7-T8_a))in K")
T8=T7-(ne*(T7-T8_a))
disp("expansion work output per kg of air(Wt)=Cp*(T5-T6)+Cp*(T7-T8) in KJ/kg")
Wt=Cp*(T5-T6)+Cp*(T7-T8)
disp("heat added per kg air(q_add)=Cp*(T5-T4)+Cp*(T7-T6) in KJ/kg")
q_add=Cp*(T5-T4)+Cp*(T7-T6)
disp("fuel required per kg of air,mf=q_add/C")
mf=q_add/C
disp("air-fuel ratio=1/mf")
1/mf
disp("net output(W)=Wt-Wc in KJ/kg")
W=Wt-Wc
disp("output for air flowing at 30 kg/s,=W*m in KW")
W*m
disp("thermal efficiency=W/q_add")
W/q_add
disp("in percentage")
W*100/q_add
disp("so thermal efficiency=27.87%,net output=6876.05 KW,A/F ratio=51.07")
disp("NOTE=>In this question,expansion work is calculated wrong in book,so it is corrected above and answers vary accordingly.")
