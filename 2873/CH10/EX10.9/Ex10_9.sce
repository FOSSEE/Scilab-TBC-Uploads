// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 10 Example 9")
h=10;//height of indicator diagram in mm
k=25;//indicator constant in KN/m^2  per mm
N=300;//engine rpm
Vs=1.5*10^-2;//swept volume in m^3
M=60;//effective brake load upon dynamometer in kg
r=50*10^-2;//effective brake drum radius in m
m=0.12;//fuel consumption in kg/min
C=42*10^3;//calorific value in KJ/kg
mw=6;//circulating water rate in kg/min
T1=35;//cooling water entering temperature in degree celcius
T2=70;//cooling water leaving temperature in degree celcius
Eg=30;//exhaust gases leaving energy in KJ/s
Cw=4.18;//specific heat of water in KJ/kg K
g=9.81;//accelaration due to gravity in m/s^2
disp("indicated mean effective pressure(P_imeb)=h*k in Kpa")
P_imeb=h*k
disp("indicated power(IP)=P_imeb*L*A*N/2 in KW") 
IP=P_imeb*Vs*N/(2*60)
disp("brake power(BP)=2*%pi*N*T in KW")
BP=2*%pi*N*(M*g*r*10^-3)/(2*60)
disp("mechanical efficiency(n_mech)=BP/IP")
n_mech=BP/IP
disp("in percentage")
n_mech=n_mech*100
disp("so indicated power=9.375 KW")
disp("brake power=4.62 KW")
disp("mechanical efficiency=49.28%")
disp("energy liberated from fuel(Ef)=C*m/60 in KJ/s")
Ef=C*m/60
disp("energy available as brake power(BP)=4.62 KW")
disp("energy to coolant(Ec)=(mw/M)*Cw*(T2-T1) in KW")
Ec=(mw/M)*Cw*(T2-T1)
disp("energy carried by exhaust gases(Eg)=30 KJ/s")
disp("unaccounted energy loss=Ef-BP-Ec-Eg in KW")
Ef-BP-Ec-Eg
disp("NOTE=>overall energy balance sheet is attached as jpg file with this code.")






