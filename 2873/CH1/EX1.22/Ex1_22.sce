// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 22")
m=5;//mass of mixture of gas in kg
P=1.013*10^5;//pressure of mixture in pa
T=300;//temperature of mixture in k
M1=28;//molecular weight of nitrogen(N2)
M2=32;//molecular weight of oxygen(O2)
M3=44;//molecular weight of carbon dioxide(CO2)
f1=0.8;//fraction of N2 in mixture
f2=0.18;//fraction of O2 in mixture
f3=0.02;//fraction of CO2 in mixture
k1=1.4;//ratio of specific heat capacities for N2
k2=1.4;//ratio of specific heat capacities for O2
k3=1.3;//ratio of specific heat capacities for CO2
R=8314;//universal gas constant in J/kg k
disp("first calculate gas constants for different gases in j/kg k")
disp("for nitrogen,R1=R/M1")
R1=R/M1
disp("for oxygen,R2=R/M2")
R2=R/M2
disp("for carbon dioxide,R3=R/M3")
R3=R/M3
disp("so the gas constant for mixture(Rm)in j/kg k")
disp("Rm=f1*R1+f2*R2+f3*R3")
Rm=f1*R1+f2*R2+f3*R3
disp("now the specific heat at constant pressure for constituent gases in KJ/kg k")
disp("for nitrogen,Cp1=((k1/(k1-1))*R1)/1000")
Cp1=((k1/(k1-1))*R1)/1000
disp("for oxygen,Cp2=((k2/(k2-1))*R2)/1000")
Cp2=((k2/(k2-1))*R2)/1000
disp("for carbon dioxide,Cp3=((k3/(k3-1))*R3)/1000")
Cp3=((k3/(k3-1))*R3)/1000
disp("so the specific heat at constant pressure for mixture(Cpm)in KJ/kg k")
disp("Cpm=f1*Cp1+f2*Cp2+f3*Cp3")
Cpm=f1*Cp1+f2*Cp2+f3*Cp3
disp("now no. of moles of constituents gases")
disp("for nitrogen,n1=m1/M1 in mol,where m1=f1*m in kg")
m1=f1*m
n1=m1/M1
disp("for oxygen,n2=m2/M2 in mol,where m2=f2*m in kg")
m2=f2*m
n2=m2/M2
disp("for carbon dioxide,n=m3/M3 in mol,where m3=f3*m in kg")
m3=f3*m
n3=m3/M3
disp("total no. of moles in mixture in mol")
disp("n=n1+n2+n3")
n=n1+n2+n3
disp("now mole fraction of constituent gases")
disp("for nitrogen,x1=n1/n")
x1=n1/n
disp("for oxygen,x2=n2/n")
x2=n2/n
disp("for carbon dioxide,x3=n3/n")
x3=n3/n
disp("now the molecular weight of mixture(Mm)in kg/kmol")
disp("Mm=M1*x1+M2*x2+M3*x3")
Mm=M1*x1+M2*x2+M3*x3














