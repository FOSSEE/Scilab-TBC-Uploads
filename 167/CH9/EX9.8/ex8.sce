//ques8
//A Gas Turbine with Reheating and Intercooling
clear
clc
//For two-stage compression and expansion, the work input is minimized and the work output is maximized when both stages of the compressor and the turbine have the same pressure ratio

//P2/P1=P4/P3=P6/P7=P8/P9=sqrt(8)=r 
//At inlets: T1=T3 h1=h3 T6=T8 h6=h8
//At outlet T2=T4 h2=h4  T7=T9 h7=h9

//In the absence of any regeneration, the back work ratio and the thermal efficiency are determined by using data from Table A–17
T1=300;//temperature at state 1 in K
h1=300.19;//enthalpy at state 1 in kJ/kg
T3=T1;//temperature at state 3 in K
h3=h1;//enthalpy at state 3 
Pr1=1.386;//reduced pressure at state 1
r=sqrt(8);//constant ratio
Pr2=Pr1*r;//here r is for P2/P1
//from table
T2=403.3;//temp at state 2 in K
T4=T2;//temp at state 4 in K
h2=404.31;//enthalpy at state 2 in kJ/kg 
h4=h2;//enthalpy at state 4 

T6=1300;//temperature at state 6 in K
T8=T6;//temp at state 8 
h6=1395.97;//enthalpy at state 6
h8=h6;//enthalpy at state 8
Pr6=330.9;//reduced pressure at state 6
Pr7=1/r*Pr6;//reduced pressure at state 7
T7=1006.4;//temperature at state 7 in K
T9=T7;//temperature at state 9 in K
h7=1053.33;//enthalpy at state 7 in kJ/kg
h5=h7;//enthalpy at state 5
h9=h7;//enthalpy at state 9
Wcompin=2*(h2-h1);//input work in compression in kJ/kg
Wturbout=2*(h6-h7);//output turbine work in kJ/kg
Wnet=Wturbout-Wcompin;//net work done in kJ/kg
Qin=(h6-h4)+(h8-h7);//input heat in kJ/kg
Rbw=Wcompin/Wturbout;//back work ratio
printf('(a) Back work ratio = %.3f \n',Rbw);
nth=Wnet/Qin;//thermal efficiency
printf(' (b) Thermal Efficiency = %.3f \n',nth);

//(b)
qin=(h6-h5)+(h8-h7);//input specific heat in kJ/kg
nth=Wnet/qin;//thermal efficiency 
printf(' (c) Thermal efficiency in this case = %.3f \n',nth);
