//Chapter-6, Illustration 7, Page 313
//Title: Refrigeration cycles
//=============================================================================
clc
clear

//INPUT DATA
T1=-5;//Temperature at point 1 in oC
T2=30;//Temperature at point 2 in oC
m=13500;//mass of ice per day in kg
Tw=20;//Temperature of water in oC
COP=0.6;//Co-efficient of performance
h2=1709.33;//Enthalpy at point 2 in kJ/kg
s2=6.16259;//Entropy at point 2 in kJ/kg-K
s1=6.16259;//Entropy at point 1 in kJ/kg-K
sf=1.8182;//Entropy in kJ/kg-K
sg=6.58542;//Entropy in kJ/kg-K
hf=400.98;//Enthalpy in kJ/kg
hfg=1278.35;//Enthalpy in kJ/kg
h4=562.75;//Enthalpy at point 4 in kJ/kg
S=4.187;//Specific heat of water in kJ/kg
L=336;//Latent heat of ice in kJ/kg

//CALCULATIONS
x1=(s1-sf)/(sg-sf);//Quality factor
h1=hf+(x1*hfg);//Enthalpy at point 1 from refrigerant-12 tables in kJ/kg
COPi=(h1-h4)/(h2-h1);//Ideal COP
COPact=COP*COPi;//Actual COP
Qr=((m*S*(Tw-0))+(m*L))/(24*3600);//Total amount of heat removed in kJ/s
mr=Qr/(h1-h4);//Circulation rate of ammonia in kg/s
W=mr*(h2-h1);//Power required in kW

//OUTPUT
mprintf('Circulation rate of ammonia is %3.3f kg/s \n Power required is %3.3f kW \n COP is %3.3f',mr,W,COPact)





//==============================END OF PROGRAM=================================
