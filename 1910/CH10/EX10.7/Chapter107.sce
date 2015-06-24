// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 10, Example 7")
//Water enters a cross flow heat exchanger (both fluids unmixed) at temprature(Tci)=20°C amd flows at a mass flow rate of mdotw=7kg/s
Tci=20;
mdotw=7;
//The air flows at a mass flow rate of mdota=10kg/s from Temprature(Thi)=125°C 
mdota=10;
Thi=125;
//The overall heat transfer coefficient(U)=220W/(m^2*K)and Area(A)=250m^2.
U=220;
A=250;
//The specific heat of air (cpa=1.01kJ/(kg*K)) and water is (cpw=4.18kJ/(kg*K))
cpa=1.01;
cpw=4.18;
//Cair and Cwater are heat capacities of air and water respectively
Cair=mdota*cpa;
Cwater=mdotw*cpw;
//C=Cmin/Cmax
Cmin=min(Cwater,Cair);
Cmax=max(Cwater,Cair);
C=Cmin/Cmax;
//NTU is number of transfer units
//NTU=(U*A)/Cmin
disp("NTU is defined as (U*A)/Cmin ")
NTU=(U*A)/(Cmin*1000)
//To determine the effectiveness of heat exchanger we have to find out the suitable expression 
//For this type of heat exchanger The effectiveness(eff)is determined by (1-e^[(NTU^.22*{e^-(C*NTU^0.78)-1})/C])
disp("The effectiveness of heat exchanger is")
eff=(1-%e^[(NTU^0.22*{%e^(-C*NTU^0.78)-1})/C])
//Hence The total heat transfer rate(Q)=eff*Cmin*(Thi-Tci)in W.
disp("The total heat transfer rate(Q)=eff*Cmin*(Thi-Tci) in W")
Q=eff*Cmin*1000*(Thi-Tci)    
//The exit temprature(Tho) of air is given by Thi-(Q/(mdota*cpa))
disp("The exit temprature of air in °C ")
Tho=Thi-(Q/(mdota*1000*cpa))//NOTE:-The answer slightly varies from the answer in book(i.e Tho=26°C) because the value of Q taken in book is approximated to 1*10^6W.
















