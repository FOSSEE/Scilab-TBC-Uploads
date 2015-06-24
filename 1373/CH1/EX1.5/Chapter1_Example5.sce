//Chapter-1, Example 1.5, Page 20
//=============================================================================
clc
clear

//INPUT DATA
k=0.145;//Thermal conductivity of Firebrick in W/m.K
e=0.85;//Emissivity
L=0.145;//Thickness of the wall in m
Tg=800;//Gas temperature in degree C
Twg=798;//Wall temperature ion gas side in degree C
hg=40;//Film conductance on gas side in W/m^2.K
hc=10;//Film conductance on coolant side in W/m^2.K
F=1;//Radiation Shape factor between wall and gas

//CALCULATIONS
R1=(((e*5.67*10^-8*F*((Tg+273)^4-(Twg+273)^4))/(Tg-Twg))+(1/hg));//Thermal resistance inverse
R2=(L/k);//Thermal resistance
R3=(1/hc);//Thermal resistance
U=1/((1/R1)+R2+R3);//Overall heat transfer coefficient in W/m^2.K

//OUTPUT
mprintf('Overall heat transfer coefficient is %3.3f W/m^2.K',U)
