// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 10, Example 2")
//Hot oil(specific heat,ch=2.09kJ/(kg*K)) flows through counter flow heat excahnger at the mass flow rate of mdoth=(0.7kg/s)
ch=2.09*10^3;
mdoth=0.7;
//overall heat transfer coefficient(U)=650 W/(m^2*K)
U=650;
//It enters at temprature,Th1=200°C and leaves at temprature,Th2=70°C 
Th1=200;
Th2=70;
//Cold oil(specific heat,cc=1.67kJ/(kg*K) exits at temprature,Tc2=150°C at the mass flow rate of mdotc=(1.2kg/s)
mdotc=1.2;
cc=1.67*10^3;
Tc2=150;
//The unknown inlet temprature(Tc1) of cold oil may be found from energy balance mdotc*(Tc2-Tc1)=mdoth*(Th2-Th1)
disp("The inlet temprature(Tc1) of cold oil in °C ")
Tc1=Tc2-[(mdoth*ch)/(mdotc*cc)]*(Th1-Th2)
//The rate of heat transfer can be calculate as Q=mdoth*ch*(Th1-Th2)
disp("The rate of heat transfer Q=mdoth*ch*(Th1-Th2) in W")
Q=mdoth*ch*(Th1-Th2)
deltaT1=Th1-Tc2;//deltaT1 is temprature difference between hot oil inlet temprature and cold oil exit temprature
deltaT2=Th2-Tc1;//deltaT2 is temprature difference between hot oil exit temprature and cold oil inlet temprature
//LMTD(Log mean temprature difference) is defined as (deltaT2-deltaT1)/(ln(deltaT2/deltaT1)) for counter flow.
disp("LMTD is given by (deltaT2-deltaT1)/(ln(deltaT2/deltaT1)) in °C ")
//let X=log10((deltaT2/deltaT1)) and Y=log10(2.718281)
X=log10((deltaT2/deltaT1));
Y=log10(2.718281);
//ln=(ln(deltaT2/deltaT1))
ln=X/Y;
LMTD=(deltaT2-deltaT1)/ln
//Area(A)=Q/(U*LMTD) in m^2
disp("Area(A)=Q/(U*LMTD) in m^2")
A=Q/(U*LMTD)
