// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 12, Example 3")
//The diameter of tube is (di)=35mm which measures binary diffusion coefficient of water vapour in air at temprature,T=20°C or 293 K.
//The measurement is done at height of 1500 m where the atmospheric pressure is (p)=80kPa.
p=80;
T=293;
//The distance from the water surface to the open end of the tube is L=500 mm or 0.5m.
L=.5;
//After t=12 days of continuous operation at constant pressure and temprature the amount of water evaporated was measured to be m= 1.2*10^-3kg.
m= 1.2*10^-3;
//From the steam table pvapour=3.17kPa
pvapour=3.17;//partial pressure of vapour
//Yao is the mole fraction of water vapour at the interface
disp("The mole fraction of water vapour at the interface is given by Yao=pvapour/p")
Yao=pvapour/p
//The mole fraction of water vapour at the top end of the tube is Yal=0
Yal=0;
R=8.31*10^3;//gas constant
//The total molecular concentration is (c)
disp("The total molecular concentration (c) through the tube remains constant is given by c=p/(R*T) in kmol/m^3")
c=(p*10^3)/(R*T)
di=35;
//A is the cross sectional area of the tube
disp("The cross sectional area of the tube is given by A=(pi*(di*10^-3)^2)/4 in m^2")
A=(%pi*(di*10^-3)^2)/4
//The molecular weight of wate is M=18
M=18;
//The mass flow rate is given by mdot=(m/(12*24*3600))
mdot=(m/(12*24*3600));
//N is the molar flow rate of water vapour
disp("The molar flow rate of water vapour is given by N=mdot/M in kmol/s")
N=mdot/M
//The molar flow rate of water vapour can also be written as N=(c*Dab*A*ln[(1-Yal)/(1-Yao)])/L
//The diffusion coefficient of water vapour is Dab=(N*L)/(c*A*ln[(1-Yal)/(1-Yao)])
//let us take X=log10((1-Yal)/(1-Yao)) and Y=log10(2.7182)
X=log10((1-Yal)/(1-Yao));
Y=log10(2.7182);
//ln[(1-Yal)/(1-Yao)] is given by
ln=X/Y;
disp("The diffusion coefficient of water vapour is Dab=(N*L)/(c*A*ln[(1-Yal)/(1-Yao)]) in m/s")
Dab=(N*L)/(c*A*ln)



















