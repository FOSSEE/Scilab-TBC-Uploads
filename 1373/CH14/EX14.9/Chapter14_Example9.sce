//Chapter-14, Example 14.9, Page 591
//=============================================================================
clc
clear

//INPUT DATA
T=50;//Temperature of air stream in degree C
Tb=22;//Bulb temperature in degree C

//CALCULATIONS
Tf=(T+Tb)/2;//Film temperature in degree C
p=1.14;//Density in kg/m^3
Cp=1.006;//Specific heat in J/kg.K
Pr=0.7;//Prantl number
u=(2*10^-5);//Dynamic viscosity in Ns/m^2
DAB=(0.26*10^-4);//DAB value in m^2/s
Sc=(u/(p*DAB));//Schmidt nuber
Le=(Sc/Pr);//Lewis number
p1=0.01920;//Density in kg/m^3
hfg=2449;//Enthalpy in kJ/kg
pA=0.0064;//Density in kg/m^3
psat=(1/12.23);//Saturation density in kg/m^3
RH=(pA/0.0817)*100;//Relative humidity

//OUTPUT
mprintf('Relative humidity of the airstream is %3.2f percent',RH)

//=================================END OF PROGRAM==============================
