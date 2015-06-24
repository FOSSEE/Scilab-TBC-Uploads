// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 14")
V_A=6;//volume of compartment A in m^3
V_B=4;//volume of compartment B in m^3
To=300;//temperature of atmosphere in K
Po=1*10^5;//atmospheric pressure in pa
P1=6*10^5;//initial pressure in pa
T1=600;//initial temperature in K
V1=V_A;//initial volume in m^3
V2=(V_A+V_B);//final volume in m^3
y=1.4;//expansion constant 
R=287;//gas constant in J/kg K
Cv=0.718;//specific heat at constant volume in KJ/kg K
disp("expansion occurs in adiabatic conditions.")
disp("temperature after expansion can be obtained by considering adiabatic expansion")
disp("T2/T1=(V1/V2)^(y-1)")
disp("so T2=T1*(V1/V2)^(y-1) in K")
T2=T1*(V1/V2)^(y-1)
T2=489.12;//approx.
disp("mass of air,m=(P1*V1)/(R*T1)in kg")
m=(P1*V1)/(R*T1)
m=20.91;//approx.
disp("change in entropy of control system,deltaSs=(S2-S1)=m*Cv*log(T2/T1)+m*R*10^-3*log(V2/V1)in KJ/K")
deltaSs=m*Cv*log(T2/T1)+m*R*10^-3*log(V2/V1)
disp("here,there is no change in entropy of environment,deltaSe=0")
deltaSe=0;
disp("total entropy change of combined system=deltaSc=deltaSs+deltaSe in KJ/K")
deltaSc=deltaSs+deltaSe
disp("loss of available energy(E)=irreversibility=To*deltaSc in KJ")
E=To*deltaSc
disp("so loss of available energy,E=0.603 KJ")

