//Chapter-7, Illustration 3, Page 347
//Title: Air Conditioning
//=============================================================================
clc
clear

//INPUT DATA
RSH=10;//Room sensible heat in kW
RLH=10;//Room latent heat in kW
td1=25;//Inside temperature in oC
RH1=0.5;//Inside Re-Heat factor
h1=50.4;//Enthalpy at point 1 in kJ/kg
td2=35;//Out door Dry bulb temperature in oC
tw2=28;//Out door Wet bulb temperature in oC
CR=4;//Cooling coil ratio
BPF=0.1;//Cooling coil bypass factor
tADP=10;//Apparatus dew point temperature in oC
RH3=0.55;//Re-Heat factor at point 3
h3=58.2;//Enthalpy at point 3 in kJ/kg
RH4=0.95;//Re-Heat factor at point 4
h4=32.2;//Enthalpy at point 4 in kJ/kg
RH5=0.81;//Re-Heat factor at point 5
h5=36.8;//Enthalpy at point 5 in kJ/kg
RH6=0.54;//Re-Heat factor at point 6
h6=43.1;//Enthalpy at point 5 in kJ/kg
td6=22;//Temperature at point 6 in oC

//CALCULATIONS
td3=((td2-td1)/5)+td1;//Temperature at point 3 from Psychrometric chart shown in Page 348 in oC
td4=(BPF*(td3-tADP))+tADP;//Temperature at point 4 from Psychrometric chart shown in Page 348 in oC
td5=td4+((td1-td4)/5);//Temperature at point 5 from Psychrometric chart shown in Page 348 in oC
RSHF=RSH/(RSH+RLH);//Room Sensible Heat Factor
QR=h1-h6;//Total heat removed in kJ/kg
S=(RSH+RLH)/QR;//Supply air quantity in kg/s
R=(S*(h6-h5))/3.5;//Refrigeration load due to reheat in ton
D=(S*4)/5;//Dehumidified air quantity in kg/s
T=(D*(h3-h4))/3.5;//Total refrigerating capacity in ton
Q=(D/5)/1.2;//Quantity of fresh air supplied in (m^3)/s

//OUTPUT
mprintf('Supply air condition to the room is %3.2f kg/s \n Refrigeration load due to reheat is %3.2f ton \n Total refrigerating capacity is %3.2f ton \n Quantity of fresh air supplied is %3.3f (m^3)/s',S,R,T,Q)
