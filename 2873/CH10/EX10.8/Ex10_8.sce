// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 10 Example 8")
N=300;//engine rpm
BP=250;//brake power in KW
D=30*10^-2;//bore in m
L=25*10^-2;//stroke in m
m=1;//fuel consumption in kg/min
r=10;//airfuel ratio 
P_imep=0.8;//indicated mean effective pressure in pa
C=43*10^3;//calorific value of fuel in KJ/kg
P=1.013*10^5;//ambient pressure in K
R=0.287;//gas constant in KJ/kg K
T=(27+273);//ambient temperature in K
disp("indicated power(IP)=P_imep*L*A*N*4/60 in KW")
IP=P_imep*L*(%pi*D^2/4)*N*4*10^3/60
disp("mechanical efficiency(n_mech)=brake power/indicated power")
disp("so n_mech=BP/IP")
n_mech=BP/IP
disp("in percentage ")
n_mech=n_mech*100
disp("brake specific fuel consumption(bsfc)=m*60/BP in kg/KW hr")
bsfc=m*60/BP
disp("brake thermal efficiency(n_bte)=3600/(bsfc*C)")
n_bte=3600/(bsfc*C)
disp("in percentage")
n_bte=n_bte*100
disp("swept volume(Vs)=%pi*D^2*L/4 in m^3")
Vs=%pi*D^2*L/4
disp("mass of air corresponding to above swept volume,using perfect gas equation")
disp("P*Vs=ma*R*T")
disp("so ma=(P*Vs)/(R*T) in kg")
ma=(P*Vs)/(R*T*1000) 
ma=0.02;//approx.
disp("volumetric effeciency(n_vol)=mass of air taken per minute/mass corresponding to swept volume per minute")
disp("so mass of air taken per minute in kg/min ")
1*10
disp("mass corresponding to swept volume per minute in kg/min")
ma*4*N/2
disp("so volumetric efficiency ")
10/12
disp("in percentage")
(10/12)*100
disp("so indicated power =282.74 KW,mechanical efficiency=88.42%")
disp("brake thermal efficiency=34.88%,volumetric efficiency=83.33%")













