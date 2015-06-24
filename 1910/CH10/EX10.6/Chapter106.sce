// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 10, Example 6")
//Water having specific heat,cw=4.18kJ/(kg*K) enters a counterflow double pipe heat exchanger at temprature,Tci=35°C flowing at the mass flow rate of mdotw=0.8 kg/s.
cw=4.18;
mdotw=0.8;
Tci=35;
//It is heated by oil having specific heat,co=1.88kJ/(kg*K) flowing at the mass flow rate of mdoto=1.5 kg/s from an inlet temprature(Thi) of 120°C.
co=1.88;
mdoto=1.5;
Thi=120;
//For an area(A) of 15m^2 and an overall heat transfer coefficient(U) of 350W/(m^2*K).
A=15;
U=350;
//Cwater and Co are heat capacities for water and oil respectively
//Cwater=mdotw*cw and Co=mdoto*co
Cwater=mdotw*cw;
Co=mdoto*co;
//C=Cmin/Cmax
Cmin=min(Cwater,Co);
Cmax=max(Cwater,Co);
C=Cmin/Cmax;
//NTU is number of transfer units
//NTU=(U*A)/Cmin
disp("NTU is defined as (U*A)/Cmin ")
NTU=(U*A)/(Cmin*1000)
//Heat transfer effectiveness(eff) is defined as (1-e^[-NTU*(1-C)])/(1-C*e^[-NTU*(1-C)])
disp("Heat transfer effectiveness(eff) is defined as (1-e^[-NTU*(1-C)])/(1-C*e^[-NTU*(1-C)])")
eff=(1-%e^[-NTU*(1-C)])/(1-C*%e^[-NTU*(1-C)])
//Hence The total heat transfer rate(Q)=eff*Cmin*(Thi-Tci)in kW.
disp("The total heat transfer rate(Q)=eff*Cmin*(Thi-Tci) in kW")
Q=eff*Cmin*(Thi-Tci)









