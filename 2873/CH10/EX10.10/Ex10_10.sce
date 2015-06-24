// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 10 Example 10")
m=4;//mass of fuel consumed in kg
N=1500;//engine rpm
mw=15;//water circulation rate in kg/min
T1=27;//cooling water inlet temperature in degree celcius
T2=50;//cooling water outlet temperature in degree celcius
ma=150;//mass of air consumed in kg
T_exhaust=400;//exhaust temperature in degree celcius
T_atm=27;//atmospheric temperature in degree celcius
Cg=1.25;//mean specific heat of exhaust gases in KJ/kg K
n_mech=0.9;//mechanical efficiency
T=300*10^-3;//brake torque in N
C=42*10^3;//calorific value in KJ/kg
Cw=4.18;//specific heat of water in KJ/kg K
disp("brake power(BP)=2*%pi*N*T in KW")
BP=2*%pi*N*T/60
disp("so brake power=47.124 KW")
disp("brake specific fuel consumption(bsfc)=m*60/(mw*BP) in kg/KW hr")
bsfc=m*60/(mw*BP)
disp("indicated power(IP)=BP/n_mech in Kw")
IP=BP/n_mech
disp("indicated  thermal efficiency(n_ite)=IP*mw*60/(m*C)")
n_ite=IP*mw*60/(m*C)
disp("in percentage")
n_ite=n_ite*100
disp("so indicated thermal efficiency=28.05%")
disp("heat available from fuel(Qf)=(m/mw)*C in KJ/min")
Qf=(m/mw)*C
disp("energy consumed as brake power(BP)=BP*60 in KJ/min")
BP=BP*60 
disp("energy carried by cooling water(Qw)=mw*Cw*(T2-T1)in KJ/min")
Qw=mw*Cw*(T2-T1)
disp("energy carried by exhaust gases(Qg)=(ma+m)*Qg*(T_exhaust-T_atm)/mw in KJ/min")
Qg=(ma+m)*Cg*(T_exhaust-T_atm)/mw
disp("unaccounted energy loss in KJ/min")
Qf-(BP+Qw+Qg)
disp("NOTE=>Heat balance sheet on per minute basis is attached as jpg file with this code.")





