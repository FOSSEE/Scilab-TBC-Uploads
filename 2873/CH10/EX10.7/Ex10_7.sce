// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 10 Example 7")
M=20;//load on dynamometer in kg
r=50*10^-2;//radius in m
N=3000;//speed of rotation in rpm
D=20*10^-2;//bore in m
L=30*10^-2;//stroke in m
m=0.15;//fuel supplying rate in kg/min
C=43;//calorific value of fuel in MJ/kg
FP=5;//friction power in KW
g=9.81;//acceleration due to gravity in m/s^2
disp("After switching off fuel supply the capacity of motor required to run engine will be the friction power required at this speed of engine.")
disp("friction power(FP)=5 KW")
disp("brake power(BP)=2*%pi*N*T in KW")
BP=2*%pi*N*(M*g*r)*10^-3/60
disp("indicated power(IP)=brake power(BP)+friction power(FP)in KW")
IP=BP+FP
disp("mechanical efficiency(n_mech)=BP/IP")
n_mech=BP/IP
disp("in percentage")
n_mech=n_mech*100
disp("brake specific fuel consumption(bsfc)=specific fuel consumption/brake power in kg/KW hr")
bsfc=m*60/BP
disp("brake thermal efficiency(n_bte)=3600/(brake specific fuel consumption*calorific value)")
n_bte=3600/(bsfc*C*1000)
disp("in percentage")
n_bte=n_bte*100
disp("also,mechanical efficiency(n_mech)=brake thermal efficiency/indicated thermal efficiency")
disp("indicated thermal efficiency(n_ite)=n_bte/n_mech")
n_ite=n_bte/n_mech
disp("in percentage")
n_ite=n_ite*100
disp("indicated power(IP)=P_imep*L*A*N")
disp("so P_imep=IP/(L*(%pi*D^2/4)*N)in Kpa")
P_imep=IP/(L*(%pi*D^2/4)*N/60)
disp("Also,mechanical efficiency=P_bmep/P_imep")
disp("so P_bmep=P_imep*n_mech in Kpa")
n_mech=0.8604;//mechanical efficiency
P_bmep=P_imep*n_mech
disp("brake power=30.82 KW")
disp("indicated power=35.82 KW")
disp("mechanical efficiency=86.04%")
disp("brake thermal efficiency=28.67%")
disp("indicated thermal efficiency=33.32%")
disp("brake mean effective pressure=65.39 Kpa")
disp("indicated mean effective pressure=76.01 Kpa")








