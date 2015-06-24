//Chapter-13, Example 13.4, Page 557
//=============================================================================
clc
clear

//INPUT DATA
T=273+25;//Temperature of Helium gas in K
p=4;//Pressure of helium gas in bar
Di=0.1;//Inner diamter of wall in m
Do=0.003;//Outer diamter of wall in m
DAB=(0.4*10^-13);//Binary diffusion coefficient in m^2/s
S=(0.45*10^-3);//S value for differentiation

//CALCULATIONS
A=(3.14*Di^2);//Area in m^2
V=(3.14*Di^3)/6;//Volume in m^3
R=0.08316//Gas constant in m^3 bar/kmol.K
d=((-6*R*T*DAB*S*p)/(Do*Di))/10^-11;//Decrease of pressure with time in bar/s*10^-11

//OUTPUT
mprintf('Initial rate of leakage for the system is provided by the decrease of pressure with time which is %3.2f*10^-11 bar/s',d)

//=================================END OF PROGRAM==============================
