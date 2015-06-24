// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 10 Example 4")
m=0.25;//specific fuel consumption in kg/KWh
Pb_mep=1.5*1000;//brake mean effective pressure of each cylinder in Kpa
N=100;//engine rpm
D=85*10^-2;//bore of cylinder in m
L=220*10^-2;//stroke in m
C=43*10^3;//calorific value of diesel in KJ/kg
disp("brake power of engine(BP)=Pb_mep*L*A*N/60 in MW")
A=%pi*D^2/4;
BP=Pb_mep*L*A*N/60
disp("so brake power is 3.121 MW")
disp("The fuel consumption in kg/hr(m)=m*BP in kg/hr")
m=m*BP
disp("In order to find out brake thermal efficiency the heat input from fuel per second is required.")
disp("heat from fuel(Q)in KJ/s")
disp("Q=m*C/3600")
Q=m*C/3600
disp("energy to brake power=3120.97 KW")
disp("brake thermal efficiency(n)=BP/Q")
n=BP/Q
disp("in percentage")
n=n*100
disp("so fuel consumption=780.24 kg/hr,brake thermal efficiency=33.49%")
disp("NOTE=>In book,it is given that brake power in MW is 31.21 but in actual it is 3120.97 KW or 3.121 MW which is corrected above.")
