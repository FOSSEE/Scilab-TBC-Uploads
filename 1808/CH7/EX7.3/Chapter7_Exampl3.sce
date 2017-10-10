clc
clear
//INPUT DATA
ta=25;//Dry bulb temperature in Degree c
tw=15;//Wet bulb temperature in Degree c
td=7.56;//Dew point temperature in Degree c
p=760;//Atmospheric air in mm of Hg
pv1=12.77;//Saturation pressure of water in mm of Hg
ps=23.74;//Saturation pressure of water in mm of Hg
Pv=7.788;//Saturation pressure of water in mm of Hg
Ra=287.3;//gas constant
Rv=461;//vapour constant
pa=1015639.698;//air pressure
cp=1.005;//specific pressure

//CALCULATIONS
pv=pv1-((p-pv1)*(ta-tw)*1.8/(2800-1.3*(1.8*ta+32)));//Saturation pressure of water in mm of Hg
x=(pv/ps)*100;//realtive humidity in percentage
w=0.622*(pv/(p-pv));//Specific humidity in kg w.v./kg d.a
h=cp*ta+w*(2500+1.88*ta);//Enthalpy of air per kg of dry air in kJ/kg d.a
Roa=(pa/10)/(Ra*(273+ta));//Density of air in kg/m^3
Rov=pv*133.5/(Rv*(273+ta));//Density of vapour in kg/m^3
Ro=Rov+Roa;//Density in kg/m^3

//OUTPUT
printf('(a)Relative humidity is %3.2f percentage \n  (b)Humidity ratio is %3.4f kg w.v./kg d.a \n (c)Dew point temperature is %3.2f Degree c \n (d)Enthalpy of air per kg of dry air is %3.2f kJ/kg d.a.\n (e)Partial pressure of vapour is %3.3f mm Hg \n (f)density is %3.3f kg/m^3',x,w,td=7.56,h,Pv,Ro)




