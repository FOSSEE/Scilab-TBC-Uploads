clc
clear
//Input data
F=11;//Fuel used per hour observed during the trial of a single cylinder four stroke diesel engine in kg
mc=85;//Carbon present in the fuel in percent
mh=14;//Hydrogen present in the fuel in percent
mn=1;//Non combustibles present in the fuel in percent
CV=50000;//Calorific value of fuel in kJ/kg
Vc=8.5;//Percentage of carbon dioxide present in exhaust gas by Volumetric analysis
Vo=10;//Oxygen present in exhaust gases in percent
Vn=81.5;//Nitrogen present in exhaust gases in percent
Te=400;//Temperature of exhaust gases in degrees celsius
se=1.05;//Specific heat of exhaust gas in kJ/kg
Pp=0.030;//Partial pressure of steam in the exhaust in bar
Ta=20;//Ambient temperature in degrees celsius
hs=2545.6;//Enthalpy of saturated steam in kJ/kg
Tsa=24.1;//Saturation temperature from graph in degrees celcius
Cp=2.1;//Specific heat in kJ/kg K
hst=3335;//Enthalpy of super heated steam in kJ/kg

//Calculations
Ma=(Vn*mc)/(33*Vc);//Mass of air supplied per kg of fuel in kg
Me=Ma+1;//Mass of exhaust gases formed per kg of fuel in kg
me=(Me*F)/60;//Mass of exhaust gases formed per minute in kg
ms=F*(mh/100);//Mass of steam formed per kg of fuel in kg
ms1=(ms*F)/60;//Mass of steam formed per minute in kg
mde=me-ms1;//Mass of dry exhaust gases formed per minute in kg
H=mde*se*(Te-Ta);//Heat carried away by the dry exhaust gases per minute in kJ/min
Es=hs+(Cp*(Te-Tsa));//Enthalpy of superheated steam in kJ/kg
He=ms1*hst;//Heat carried away by steam in the exhaust gases in kJ/min
Hl=H+He;//Total heat lost through dry exhaust gases and steam in kJ/min
Hf=(F/60)*CV;//Heat supplied by fuel per minute in kJ/min
nh=(Hl/Hf)*100;//Percentage of heat carried away by exhaust gases

//Output
printf('Percentage of heat carried away by exhaust gases is %3.1f percent',nh)
