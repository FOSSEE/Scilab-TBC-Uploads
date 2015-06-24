// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 10, Example 3")
//A cross flow heat exchanger with both fluids unmixed is used to heat water((specific heat,cc=4.18kJ/(kg*K)) from temprature Tci=50°C to Tco=90°C 
//flowing at the mass flow rate of (mdotc)=1kg/s
Tci=50;
Tco=90;
cc=4.18*10^3;
mdotc=1;
//The hot engine oil has (specific heat,ch=1.9kJ/(kg*K)) flowing at the mass flow rate of mdoth=3kg/s enters at temprature Thi=100°C
mdoth=3;
Thi=100;
ch=1.9*10^3;
//The unknown outlet temprature(Tho) of  oil may be found from energy balance mdotc*(Tco-Tci)=mdoth*(Tho-Thi)
disp("The outlet temprature(Tho) of oil in °C ")
Tho=Thi-[(mdotc*cc)/(mdoth*ch)]*(Tco-Tci)
disp("For a counterflow heat exchanger")
deltaT1=Thi-Tco;//deltaT1 is temprature difference 
deltaT2=Tho-Tci;//deltaT2 is temprature difference 
//LMTD(log mean temprature difference) is defined as (deltaT2-deltaT1)/(ln(deltaT2/deltaT1)) for counter flow.
disp("LMTD is given by (deltaT2-deltaT1)/(ln(deltaT2/deltaT1)) in °C ")
//let X=log10((deltaT2/deltaT1)) and Y=log10(2.718281)
X=log10((deltaT2/deltaT1));
Y=log10(2.718281);
ln=X/Y;
LMTD=(deltaT2-deltaT1)/ln
//Area(A)=20m^2
A=20;
//We have to employ correction factor(F) for the cross flow arrangement.
//We evaluate dimensionless parameters P=(Tco-Tci)/(Thi-Tco) and R=(Thi-Tho)/(Tco-Tci).
disp("dimensionless parameters P and R are")
P=(Tco-Tci)/(Thi-Tci)
R=(Thi-Tho)/(Tco-Tci)
disp("correction factor(F) for the cross flow arrangement as obtained from graph of F vs Single Pass flow with fluids unmixed")
F=0.75
//The rate of heat transfer can be calculate as Q=mdoth*ch*(Th1-Th2)
Q=mdotc*cc*(Tco-Tci);
//overall heat transfer coefficient(U)=Q/(A*F*LMTD)
disp("overall heat transfer coefficient(U)=Q/(A*F*LMTD)in W/(m^2*K)")
U=Q/(A*F*LMTD)






