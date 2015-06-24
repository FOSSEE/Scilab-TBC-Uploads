// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 10 Example 13")
D=20*10^-2;//cylinder diameter in m
L=28*10^-2;//stroke in m
m=4.22;//mass of fuel used in kg
C=44670;//calorific value of fuel in KJ/kg
N=21000/60;//engine rpm
mep=2.74*10^5;//mean effective pressure in pa
F=600;//net brake load applied to a drum of 100 cm diameter in N
r=50*10^-2;//brake drum radius in m
mw=495;//total mass of cooling water in kg
T1=13;//cooling water inlet temperature in degree celcius
T2=38;//cooling water outlet temperature in degree celcius
ma=135;//mass of air used in kg
T_air=20;//temperature of air in test room in degree celcius
T_exhaust=370;//temperature of exhaust gases in degree celcius
Cp_gases=1.005;//specific heat of gases in KJ/kg K
Cp_steam=2.093;//specific heat of steam at atmospheric pressure in KJ/kg K
Cpw=4.18;//specific heat of water in KJ/kg K
disp("brake power(BP)=2*%pi*N*T in KW")
BP=2*%pi*N*F*r/60000
disp("indicated power(IP)=(mep*L*A*N)/60000 in KW")
IP=(mep*L*(%pi*D^2/4)*N)/60000
disp("A> heat added(Q)=m*C/3600 in KJ/s")
Q=m*C/3600
disp("or Q in KJ/min")
Q=Q*60
disp("thermal efficiency(n_th)=IP/Q ")
Q=52.36;//heat added in KJ/s
n_th=IP/Q
disp("in percentage")
n_th=n_th*100
disp("B> heat equivalent of brake power(BP)=BP*60 in KJ/min ")
BP=BP*60
disp("C> heat loss to cooling water(Qw)=mw*Cpw*(T2-T1) in KJ/min")
Qw=mw*Cpw*(T2-T1)/60
disp("heat carried by exhaust gases=heat carried by steam in exhaust gases+heat carried by fuel gases(dry gases) in exhaust gases")
disp("mass of exhaust gases(mg)=mass of air+mass of fuel in kg/min")
disp("mg=(ma+m)/60")
mg=(ma+m)/60
disp("mass of steam in exhaust gases in kg/min")
9*(0.15*m/60)
disp("mass of dry exhaust gases in kg/min")
mg-0.095
disp("D> heat carried by steam in exhaust in KJ/min")
0.095*{Cpw*(100-T_air)+2256.9+Cp_steam*(T_exhaust-100)}
disp("E> heat carried by fuel gases(dry gases) in exhaust gases(Qg) in KJ/min")
Qg=2.225*Cp_gases*(T_exhaust-T_air)
disp("F> unaccounted loss=A-B-C-D-E in KJ/min")
3141.79-659.76-862.13-299.86-782.64
disp("NOTE>Heat balance sheet on per minute basis is attached as jpg file with this code.")











