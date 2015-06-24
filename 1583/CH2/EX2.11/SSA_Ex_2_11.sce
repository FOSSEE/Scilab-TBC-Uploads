clc
//Chapter 2:Small Signal Amplifiers
//example 2.11 pag no 51
//given
wL=10^6//bandwidth
R1=1*10^3//taking resistance value for required specification
Av=-50//voltage gain
Rf=-Av*R1//feedback resistance
C=(wL*Rf)^-1//capacitance
mprintf('R1=%d K ohm \n feedback resistance= %d K  ohm \n capacitance= %d pF',R1*1e-3,Rf*1e-3,C*1e12)
