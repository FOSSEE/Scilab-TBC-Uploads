//ques14
//Isentropic Efficiency of a Steam Turbine
clear
clc
//state 1
P1=3;//pressure in MPa
T1=400;//temperature in C
//from table
h1=3231.7;//enthalpy of heat in kJ/kg
s1=6.9235;//enropy in kJ/kg.k

//state 2a
P2a=50;//pressure in kPa
T2a=100;//temp in C
h2a=2682.4;//enthalpy of heat in kJ/kg

//state 2s
P2s=50;//pressure in kPa
s2s=6.9235;//s2s=s1 entropy remains same
//from table
sf=1.0912;//entropy of fluid state in kJ/kg.k
sg=7.5931;//entropy of vapor in kJ.kg.k
//at end,steam exists as a saturated mixture since sf<s2s<sg
hf=340.54;//enthalpy of heat of fluid state in kJ/kg
hfg=2304.7;//enthalpy difference of vapor and liquid state in kJ/kg
x2s=(s2s-sf)/(sg-sf);//x factor
h2s=hf+x2s*(hfg);//enthalpy of heat in kJ/kg
//using the equation 7-61 in book we get
n=(h1-h2a)/(h1-h2s);
printf('(a) Isentropic efficiency = %.1f percent  \n',n*100);

Wout=2000//output power in kJ/s
ms=Wout/(h1-h2a);//mass flow rate in kg/s
printf(' (b) The mass flow rate of steam = %.2f kg/s ',ms);//through this turbine from the energy balance for steady-flow systems
