clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
qx=4.05 //eV
qVn=0.2 //eV
Nc=2.86*10^19 
a=(qx+qVn)/(k*T)
nth=exp(a)*Nc
disp(nth,"the thermionically emitted electron density for nth at 4.05 in cm^3=")     //textbook ans is wrong

qx=0.6 //eV
nth=exp(qx/(k*T))*Nc
disp(nth,"the thermionically emitted electron density for nth at 0.6  in cm^3=")     //textbook ans is wrong
