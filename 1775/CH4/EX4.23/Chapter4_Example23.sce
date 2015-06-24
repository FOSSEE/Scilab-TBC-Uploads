//Chapter-4, Illustration 23, Page 214
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
P0=800;//Steam pressure in kPa
P2=100;//Pressure at point 2 in kPa
T0=973;//Steam temperature in K
a1=73;//Nozzle angle in degrees
ns=0.9;//Steam efficiency
m=35;//Mass flow rate in kg/s
Cp=1.005;//Specific heat at constant pressure in kJ/kg-K
y=1.4;//Ratio of specific heats

//CALCULATIONS
b1=atand(tand(a1)/2);//Blade angle at inlet in degrees
b2=b1;//Blade angle at exit in degrees
p=2/tand(a1);//Flow coefficient
s=p*(tand(b1)+tand(b2));//Blade loading coefficient
Dh=ns*Cp*T0*(1-((P2/P0)^((y-1)/y)));//Difference in enthalpies in kJ/kg
W=(m*Dh)/1000;//Power developed in MW

//OUTPUT
mprintf('Rotor blade angles are %3.2f degrees and %3.2f degrees \n Flow coefficient is %3.3f \n Blade loading coefficient is %3.0f \n Power developed is %3.1f MW',b1,b2,p,s,W)













//==============================END OF PROGRAM=================================
