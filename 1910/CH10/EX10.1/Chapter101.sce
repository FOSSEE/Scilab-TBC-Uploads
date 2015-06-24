// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 10, Example 1")
//A brine solution is heated from temprature ,T1=8°C to temprature,T2=14°C in a double pipe heat exchanger.
T1=8;
T2=14;
//Water entering at temprature T3=55°C and leaving at temprature,T4=40°C at the mass flow rate of (mdot)=0.18kg/s
mdot=0.18;
T3=55;
T4=40;
//Specific heat (cp) of water =4.18kJ/(kg*K)
cp=4.18*10^3;
//overall heat transfer coefficient(U)=800 W/(m^2*K)
U=800;
//The rate of heat transfer from water is given by Q=mdot*cp*(T3-T4)
disp("The rate of heat transfer from water is given by Q=mdot*cp*(T3-T4) in W")
Q=mdot*cp*(T3-T4)
disp("(a) For a parallel flow arrangement")
//For a parallel flow arrangement deltaT1=T3-T1 and deltaT2=T4-T2. 
deltaT1=T3-T1;//deltaT1 is temprature difference 
deltaT2=T4-T2;//deltaT2 is temprature difference 
//LMTD(Log mean temprature difference) is defined as (deltaT2-deltaT1)/(ln(deltaT2/deltaT1)) for both parallel and counter flow.
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
disp("(b)For counterflow arrangement")
deltaT1=T3-T2;
deltaT2=T4-T1;
disp("LMTD=(deltaT2-deltaT1)/(ln(deltaT2/deltaT1))in°C ")
X=log10((deltaT2/deltaT1));
Y=log10(2.718281);
ln=X/Y;
LMTD=(deltaT2-deltaT1)/ln
disp("Area(A)=Q/(U*LMTD) in m^2")
A=Q/(U*LMTD)






















