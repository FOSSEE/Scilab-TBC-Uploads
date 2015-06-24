clc
//Chapter5
//Ex_17
//Given
Eg=1.42 //in eV
//letE=hc/lambda=hf
E=1.96 //in eV
P_L=50 //in mW
kT=0.0259 //  in eV
delta_E=E-(Eg+(3/2)*kT)
P_H=(P_L/(E))*delta_E
disp(P_H,"Amount of power dissipated as heat in mW is")
