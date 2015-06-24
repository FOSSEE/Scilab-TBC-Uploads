//Chapter-7, Illustration 2, Page 346
//Title: Air Conditioning
//=============================================================================
clc
clear

//INPUT DATA
S=60;//No. of staff
DBTo=30;//Out door Dry bulb temperature in oC
RHo=0.7;//Re-Heat factor at out-door
a=0.4;//amount of air circulated in (m^3)/min/person
DBTi=20;//In door Dry bulb temperature in oC
RHi=0.6;//Re-Heat factor at indoor
Td=25;//Heating coil surface temperature in oC
ha=82.5;//Enthalpy at point a from Psychrometric chart shown in Page 347 in kJ/kg
hb=34.5;//Enthalpy at point b from Psychrometric chart shown in Page 347 in kJ/kg
hc=42.5;//Enthalpy at point c from Psychrometric chart shown in Page 347 in kJ/kg
Wa=0.020;//Specific humidity at point a from Psychrometric chart shown in Page 347 in kg/kg dry air
Wb=0.009;//Specific humidity at point b from Psychrometric chart shown in Page 347 in kg/kg dry air
Tb=12;//Temperature at point b in oC
na=0.89;//Specific Volume from Psychrometric chart shown in page 346 in (m^3)/kg

//CALCULATIONS
ma=(a*S)/(na*60);//mass of air circulated per second in kg/s
Hc=(ma*(ha-hb))/3.5;//Heating capacity of cooling coil in tonnes
Hh=ma*(hc-hb);//Heating capacity of heating coil in kW
W=(ma*3600)*(Wa-Wb);//Amount of water vapour removed per hour in kg/hr
BPF=(Td-DBTi)/(Td-Tb);//By-Pass factor

//OUTPUT
mprintf('Capacity of cooling coil is %3.2f tonnes \n Capacity of heating coil is %3.1f kW \n Amount of water vapour removed per hour is %3.2f kg/hr \n Bypass factor is %3.3f',Hc,Hh,W,BPF)
