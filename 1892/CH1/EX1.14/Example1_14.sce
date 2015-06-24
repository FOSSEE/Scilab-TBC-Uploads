// Example 1.14

clear; clc; close;

format('v',7);
// Given data
Pout=24;//in KW
P=8;//no. of poles
N=720;//in rpm
VL=415;//in volt
IL=57;//in Ampere
f=50;//in Hz
phase=3;//no. of phase
cosfi=0.707;//power factor
MechLoss=1000;//in watts
Rs=0.1;//in ohm/phase

//Calculations
Ns=120*f/P;//in rpm
S=(Ns-N)/Ns;//slip
Pm=Pout*1000+MechLoss;//in watts
//formula-:  P2:Pc:Pm=1:S:1-S
//Pc=S*Pm/(1-S);//copper loss in Watts
Tsh=Pout*10^3/(2*%pi*N/60);//in N-m
disp(Tsh,"Shaft Torque in N-m : ");
T=Pm/((2*%pi*N/60));//in N-m
disp(T,"Gross torque devloped in N-m : ");
Pc=S*Pm/(1-S);//copper loss in Watts
disp(Pc,"Rotor Cu losses in watts : ");
P2=Pc/S;//in watts
Pin=sqrt(3)*VL*IL*cosfi;//in watts
Is=IL;//stator current per phase in Ampere
StatorCuLoss=3*Is^2*Rs;//in watts
disp(StatorCuLoss,"Stator Copper losses in watts : ");
StatorLosses=Pin-P2;//in watts
StatorIronLoss=StatorLosses-StatorCuLoss;//in watts
disp(StatorIronLoss,"Stator Iron losses in watts : ");
Eff=Pout*10^3/Pin*100;//in %
disp(Eff,"Efficiency in % : ");
