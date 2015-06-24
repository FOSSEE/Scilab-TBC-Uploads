// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 5 Example 6")
m1=1;//mass of first copper block in kg
m2=0.5;//mass of second copper block in kg
T1=(150+273.15);//temperature of first copper block in K
T2=(0+273.15);//temperature of second copper block in K
Cp_1=0.393;//heat capacity for copper block 1 in KJ/kg K
Cp_2=0.381;//heat capacity for copper block 2 in KJ/kg K
disp("here deltaS_universe=deltaS_block1+deltaS_block2")
disp("two blocks at different temperatures shall first attain equilibrium temperature.let equilibrium temperature be Tf")
disp("then from energy conservation")
disp("m1*Cp_1*(T1-Tf)=m2*Cp_2*(Tf-T2)")
disp("Tf=((m1*Cp_1*T1)+(m2*Cp_2*T2))/(m1*Cp_1+m2*Cp_2)in K")
Tf=((m1*Cp_1*T1)+(m2*Cp_2*T2))/(m1*Cp_1+m2*Cp_2)
disp("hence,entropy change in block 1(deltaS1),due to temperature changing from Tf to T1")
disp("deltaS1=m1*Cp_1*log(Tf/T1)in KJ/K")
deltaS1=m1*Cp_1*log(Tf/T1)
disp("entropy change in block 2(deltaS2)in KJ/K")
disp("deltaS2=m2*Cp_2*log(Tf/T2)")
deltaS2=m2*Cp_2*log(Tf/T2)
disp("entropy change of universe(deltaS)=deltaS1+deltaS2 in KJ/K")
deltaS=deltaS1+deltaS2
