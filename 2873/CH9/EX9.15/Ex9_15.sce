// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 9 Example 15")
r=10;//pressure ratio
Cp=1.0032;//specific heat of air in KJ/kg K
y=1.4;//expansion constant
T3=1400;//inlet temperature of gas turbine in K
T1=(17+273);//ambient temperature in K
P1=1*10^5;//ambient pressure in Pa
Pc=15;//condensor pressure in KPa
Pg=6*1000;//pressure of steam in generator in KPa
T5=420;//temperature of exhaust from gas turbine in K
disp("In gas turbine cycle,T2/T1=(P2/P1)^((y-1)/y)")
disp("so T2=T1*(P2/P1)^((y-1)/y)in K")
T2=T1*(r)^((y-1)/y)
disp("T4/T3=(P4/P3)^((y-1)/y)")
disp("so T4=T3*(P4/P3)^((y-1)/y) in K")
T4=T3*(1/r)^((y-1)/y)
disp("compressor work per kg,Wc=Cp*(T2-T1) in KJ/kg")
Wc=Cp*(T2-T1)
disp("turbine work per kg,Wt=Cp*(T3-T4) in KJ/kg ")
Wt=Cp*(T3-T4)
disp("heat added in combustion chamber per kg,q_add=Cp*(T3-T2) in KJ/kg ")
q_add=Cp*(T3-T2)
disp("net gas turbine output,W_net_GT=Wt-Wc in KJ/kg air")
W_net_GT=Wt-Wc
disp("heat recovered in HRSG for steam generation per kg of air")
disp("q_HRGC=Cp*(T4-T5)in KJ/kg")
q_HRGC=Cp*(T4-T5)
disp("at inlet to steam in turbine,")
disp("from steam table,ha=3177.2 KJ/kg,sa=6.5408 KJ/kg K")
ha=3177.2;
sa=6.5408;
disp("for expansion in steam turbine,sa=sb")
sb=sa;
disp("let dryness fraction at state b be x")
disp("also from steam table,at 15KPa, sf=0.7549 KJ/kg K,sfg=7.2536 KJ/kg K,hf=225.94 KJ/kg,hfg=2373.1 KJ/kg")
sf=0.7549;
sfg=7.2536;
hf=225.94;
hfg=2373.1;
disp("sb=sf+x*sfg")
disp("so x=(sb-sf)/sfg ")
x=(sb-sf)/sfg
disp("so hb=hf+x*hfg in KJ/kg K")
hb=hf+x*hfg
disp("at exit of condenser,hc=hf ,vc=0.001014 m^3/kg from steam table")
hc=hf;
vc=0.001014;
disp("at exit of feed pump,hd=hd-hc")
disp("hd=vc*(Pg-Pc)*100 in KJ/kg")
hd=vc*(Pg-Pc)*100
disp("heat added per kg of steam =ha-hd in KJ/kg")
ha-hd
disp("mass of steam generated per kg of air=q_HRGC/(ha-hd)in kg steam per kg air")
q_HRGC/(ha-hd)
disp("net steam turbine cycle output,W_net_ST=(ha-hb)-(hd-hc)in KJ/kg")
W_net_ST=(ha-hb)-(hd-hc)
disp("steam cycle output per kg of air(W_net_ST)=W_net_ST*0.119 in KJ/kg air")
W_net_ST=W_net_ST*0.119 
disp("total combined cycle output=(W_net_GT+W_net_ST) in KJ/kg air ")
(W_net_GT+W_net_ST)
disp("combined cycle efficiency,n_cc=(W_net_GT+W_net_ST)/q_add")
n_cc=(W_net_GT+W_net_ST)/q_add
disp("in percentage")
n_cc=n_cc*100
disp("In absence of steam cycle,gas turbine cycle efficiency,n_GT=W_net_GT/q_add")
n_GT=W_net_GT/q_add
disp("in percentage")
n_GT=n_GT*100
disp("thus ,efficiency is seen to increase in combined cycle upto 57.77% as compared to gas turbine offering 48.21% efficiency.")
disp("overall efficiency=57.77%")
disp("steam per kg of air=0.119 kg steam per/kg air")








