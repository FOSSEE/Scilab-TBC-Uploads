// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 10 Example 12")
N=1500;//engine rpm at full load
F=250;//brake load at full load in N
F1=175;//brake reading 1 in N
F2=180;//brake reading 2 in N
F3=182;//brake reading 3 in N
F4=170;//brake reading 4 in N
r=50*10^-2;//brake drum radius in m
m=0.189;//fuel consumption rate in kg/min
C=43*10^3;//fuel calorific value in KJ/kg
k=12;//air to fuel ratio
T_exhaust=600;//exhaust gas temperature in degree celcius
mw=18;//cooling water flow rate in kg/min
T1=27;//cooling water entering temperature in degree celcius
T2=50;//cooling water leaving temperature in degree celcius
T_atm=27;//atmospheric air temperature
Cg=1.02;//specific heat of exhaust gas in KJ/kg K
Cw=4.18;//specific heat of water in KJ/kg K
disp("brake power output of engine(BP)=2*%pi*N*T/60 in KW")
BP=2*%pi*N*F*r*10^-3/60
disp("brake power when cylinder 1 is cut(BP1)=2*%pi*N*T/60 in KW")
BP1=2*%pi*N*F1*r*10^-3/60
disp("so indicated power of first cylinder(IP1)=BP-BP1 in KW")
IP1=BP-BP1
disp("brake power when cylinder 2 is cut(BP2)=2*%pi*N*T/60 in KW")
BP2=2*%pi*N*F2*r*10^-3/60
disp("so indicated power of second cylinder(IP2)=BP-BP2 in KW")
IP2=BP-BP2
disp("brake power when cylinder 3 is cut(BP3)=2*%pi*N*T/60 in KW")
BP3=2*%pi*N*F3*r*10^-3/60
disp("so indicated power of third cylinder(IP3)=BP-BP3 in KW")
IP3=BP-BP3
disp("brake power when cylinder 4 is cut(BP4)=2*%pi*N*T/60 in KW")
BP4=2*%pi*N*F4*r*10^-3/60
disp("so indicated power of fourth cylinder(IP4)=BP-BP4 in KW")
IP4=BP-BP4
disp("now total indicated power(IP) in KW")
IP=IP1+IP2+IP3+IP4
disp("engine mechanical efficiency(n_mech)=BP/IP")
n_mech=BP/IP
disp("in percentage")
n_mech=n_mech*100
disp("so BP=19.63 KW,IP=23 KW,n_mech=83.35%")
disp("heat liberated by fuel(Qf)=m*C in KJ/min")
Qf=m*C
disp("heat carried by exhaust gases(Qg)=(k+1)*m*Cg*(T_exhaust-T_atm) in KJ/min")
Qg=(k+1)*m*Cg*(T_exhaust-T_atm)
disp("heat carried by cooling water(Qw)=mw*Cw*(T2-T1) in KJ/min")
Qw=mw*Cw*(T2-T1)
disp("energy to brake power(BP)=BP*60 in KJ/min")
BP=BP*60
disp("unaccounted losses in KJ/min")
Qf-(Qg+Qw+BP)
disp("NOTE=>Heat balance sheet on per minute basis is attached as jpg file with this code. ")
