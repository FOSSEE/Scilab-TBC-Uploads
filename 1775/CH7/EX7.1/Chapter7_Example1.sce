//Chapter-7, Illustration 1, Page 345
//Title: Air Conditioning
//=============================================================================
clc
clear

//INPUT DATA
DBTo=10;//Out door Dry bulb temperature in oC
WBTo=8;//Out door Wet bulb temperature in oC
DBTi=20;//In door Dry bulb temperature in oC
RH=0.6;//Re-Heat factor
a=0.3;//amount of air circulated in (m^3)/min/person
S=50;//Seating capacity of office
BPF=0.32;//ByPass factor
ha=25;//Enthalpy at point a from Psychrometric chart shown in Page 346 in kJ/kg
hb=42.5;//Enthalpy at point b from Psychrometric chart shown in Page 346 in kJ/kg
hc=42.5;//Enthalpy at point c from Psychrometric chart shown in Page 346 in kJ/kg
Wa=0.006;//Specific humidity at point a from Psychrometric chart shown in Page 346 in kg/kg dry air
Wc=0.009;//Specific humidity at point c from Psychrometric chart shown in Page 346 in kg/kg dry air
Tb=27;//Temperature at point b in oC
na=0.81;//Specific Volume from Psychrometric chart shown in page 346 in (m^3)/kg

//CALCULATIONS
ma=(a*S)/(na*60);//mass of air circulated per second in kg/s
Hc=ma*(hb-ha);//Heating capacity of coil in kW
Ts=(Tb-(BPF*DBTo))/(1-BPF);//Heating coil surface temperature in oC
C=(ma*3600)*(Wc-Wa);//Capacity of humidifier in kg/hr

//OUTPUT
mprintf('Heating capacity of coil is %3.2f kW \n Surface temperature of coil is %3.0f oC \n Capacity of humidifier is %3.2f kg/hr',Hc,Ts,C)
