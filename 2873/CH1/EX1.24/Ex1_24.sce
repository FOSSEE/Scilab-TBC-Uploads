// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 24")
V=6;//volume of tank in m^3
P1=800*10^3;//pressure of N2 gas tank in pa
T1=480;//temperature of N2 gas tank in k
P2=400*10^3;//pressure of CO2 gas tank in pa
T2=390;//temperature of CO2 gas tank in k
k1=1.4;//ratio of specific heat capacity for N2
k2=1.3;//ratio of specific heat capacity for CO2
R=8314;//universal gas constant in J/kg k
M1=28;//molecular weight of N2
M2=44;//molecular weight of CO2
disp("volume of tank of N2(V1) in m^3")
V1=V/2
disp("volume of tank of CO2(V2) in m^3")
V2=V/2
disp("taking the adiabatic condition")
disp("no. of moles of N2(n1)")
disp("n1=(P1*V1)/(R*T1)")
n1=(P1*V1)/(R*T1)
disp("no. of moles of CO2(n2)")
disp("n2=(P2*V2)/(R*T2)")
n2=(P2*V2)/(R*T2)
disp("total no. of moles of mixture(n)in mol")
disp("n=n1+n2")
n=n1+n2
disp("gas constant for N2(R1)in J/kg k")
disp("R1=R/M1")
R1=R/M1
disp("gas constant for CO2(R2)in J/kg k")
disp("R2=R/M2")
R2=R/M2
disp("specific heat of N2 at constant volume (Cv1) in J/kg k")
disp("Cv1=R1/(k1-1)")
Cv1=R1/(k1-1)
disp("specific heat of CO2 at constant volume (Cv2) in J/kg k")
disp("Cv2=R2/(k2-1)")
Cv2=R2/(k2-1)
disp("mass of N2(m1)in kg")
disp("m1=n1*M1")
m1=n1*M1
disp("mass of CO2(m2)in kg")
disp("m2=n2*M2")
m2=n2*M2
disp("let us consider the equilibrium temperature of mixture after adiabatic mixing at T")
disp("applying energy conservation principle")
disp("m1*Cv1*(T-T1) = m2*Cv2*(T-T2)")
disp("equlibrium temperature(T)in k")
disp("=>T=((m1*Cv1*T1)+(m2*Cv2*T2))/((m1*Cv1)+(m2*Cv2))")
T=((m1*Cv1*T1)+(m2*Cv2*T2))/((m1*Cv1)+(m2*Cv2))
disp("so the equlibrium pressure(P)in kpa")
disp("P=(n*R*T)/(1000*V)")
P=(n*R*T)/(1000*V)














