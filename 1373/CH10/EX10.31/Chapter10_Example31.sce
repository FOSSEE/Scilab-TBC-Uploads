//Chapter-10, Example 10.31, Page 463
//=============================================================================
clc
clear

//INPUT DATA
Tg=950+273;//Flue gas temperature in K
p=1;//Total pressure in atm
pco2=0.1;//Percent of co2
ph2o=0.04;//Percent of h2o
D=0.044;//Diameter of the tube in m
e=0.8;//Emissivity of grey surface 
Tw=500+273;//Uniform temperature in K

//CALCULATIONS
lms=(3*0.044);//lms value from Table 10.2 on page no. 457
pco2lms=(pco2*lms);//pco2lms in m.atm
ph2olms=(ph2o*lms);//ph2olms in m.atm
eco2=0.05;//From Fig.10.23 on page no. 458
eh2o=0.005;//From Fig.10.24 on page no. 459
b=1.05;//Correction factor from Fig. 10.28 on page no. 461
eg=0.061;//Total emissivity of gaseous mixture
ag=((0.056*(Tg/Tw)^0.65)+(b*0.021));//Absorbtivity of the gases 
q=(0.5*(e+1)*5.67*10^-8*((eg*Tg^4)-(ag*Tw^4)));//Heat transfer rate by radiation in W/m^2
hr=(q/(Tg-Tw));//Radiation heat transfer coefficient in W/m^2.degree C

//OUTPUT
mprintf('Net radiation exchange between the gas and the tube walls is %3.0f W/m^2 \nRadiation heat transfer coefficient is %3.2f W/m^2.degree C',q,hr)

//=================================END OF PROGRAM==============================
