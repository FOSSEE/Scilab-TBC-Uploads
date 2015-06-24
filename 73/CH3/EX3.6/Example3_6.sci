//Chapter 3_Semoconductor Devices Fundamentals
//Caption : Bipolar Transistor Parameters
//Example3.6: Determine Cu,Ccs,Gm,C1,R1,R0 and Ru for a bipolar transisitor. Given : Ic=0.2 mA, Vcb=10V,Vcs=15V,Cuo=0.25pF,Cje=1 pF,Ccso=1.5pF,Bo=2000,Tf=0.3ns, n=2*10^-4 and Vo=0.55V for all junctions.
// Solution:
clear;
clc;
Cuo=0.25;// collector-base depletion region capacitance in pico Farad(pF) for zero bias
Ccso=1.5 ;// collector-substrate junction capacitance in pico Farad(pF) for zero bias
q=1.6*10^-19 ;//electron charge in coulomb
Ic=0.2 ;//collector current in ampere(A)
k=8.6*10^-5;//in eV/K, where 1eV=1.6*10^-19
T=300;//absolute temperature in kelvin(K)
Vcb=10 ;//forward bias on the junction in volt(v)
Vcs=15 ;//collector-substrate bias in volt(V)
Cje=1 ;//depletion region capacitance in pico Farad(pF)
Bo=200;//small signal current gain
Tf=0.3;//transit time in forward direction in nano seconds(nS)
n=2*10^-4;// proportionality constant for Ro and gm
Vo=0.55;// bias voltage in volt(V)
Cu=Cuo/sqrt(1+(Vcb/Vo));// collector-base capacitance
disp('Cu is:')
disp('pF',Cu)
Ccs=Ccso/sqrt(1+(Vcs/Vo));// collector-substrate capacitance
disp('Ccs is:')
disp('pF',Ccs)
gm=q*Ic/(k*T*1.6*10^-19);// since k is in eV so converting it in Coulomb/Kelvin
disp('gm is:')// transconductance of the bipolar transistor here
disp('mA/V',gm)
Cb=Tf*gm;//diffusion capacitance in pico Farad(pF)
C1=Cb+Cje;//small signal capacitance of bipolar transistor
disp("C1 is:")
disp("pF",C1)
R1=Bo/gm;// small signal input resistance of bipolar transistor
disp('R1 is:')
disp('kilo Ohm',R1)
Ro=1/(n*gm);//small signal output resistance
disp('R0 is')
disp('kilo Ohm',Ro)
Ru=10*Bo*Ro/10^3;//collector-base resistance
disp('Ru is:')
disp('Mega Ohm',Ru)