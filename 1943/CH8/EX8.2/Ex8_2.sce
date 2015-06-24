
clc
clear
//Input data
ws=20;//The amount of dry saturated steam received by a surface condencer in t/h
tsh=40;//The temperature of dry saturated steam in degree centigrade 
wa=(0.35/1000);//The mass flow rate of air per 1000 kg of steam in kg
tc=38;//The temperature at which condensate leaves the temperature in degree centigrade
tm=10;//The temperature at which makeup water is supplied in degree centigrade
tc1=32;//The inlet temperature of cooling water in degree centigrade
tc2=38;//The outlet temperature of cooling water in degree centigrade
tas=27;//The temperature of air along with steam in degree centigrade
psat=0.07384;//The saturated pressure at 40 degree C in bar
vg=19.52;//The specific volume at 40 degree C in m^3/kg
R=0.287;//Real gas constant in kJ/kgK
Cpc=4.187;//The specific heat of water in kJ/kgK
Cp=1.005;//The specific heat of air in kJ/kgK

//Calculations
pair=[(wa*R*(tsh+273)*1000)/vg]*10^-5;//The pressure of air in bar
psat1=0.06624;//The saturated pressure at 38 degree C in bar
vg1=21.63;//The specific volume at 38 degree C in m^3/kg
pair1=psat-psat1;//The pressure of air in bar
wa1=(ws*1000)*wa;//Mass of air removed per hour in kg/h
V1=((wa1*R*(273+tc2)*1000))/(pair1*10^5);//Volume of air remove per hour
ws1=V1/vg1;//The mass of steam accompanying air in kg/h
psat2=0.03564;//The saturated pressure at 27 degree C in bar
vg2=38.81;//The specific volume at 27 degree C in m^3/kg
pair2=psat-psat2;//The pressure of air in bar
V2=(wa1*R*1000*(tas+273))/(pair2*10^5);//Volume of air removed per hr in m^3/hr
ws2=V2/vg2;//The mass of steam accompanying air in kg/h
ws3=ws1-ws2;//Saving mass of steam by using seperate extraction in kg/hr
Q3=[ws3*Cpc*(tc-tm)]/3600;//Saving in heat supply in the boiler in kW
V=[(V1-V2)/V1]*100;//Percentage reduction in air ejector load in %
hc=159.3;//Enthalpy at 38 degree C in kJ/kg
hs1=2574.3;//Enthalpy at 40 degree C in kJ/kg
hs2=2550.3;//Enthalpy at 27 degree C in kJ/kg
Q2=[[(ws*1000)*(hs1-hc)]-[(wa1*(Cp*(tsh-tas)))]-(ws3*hs2)]/3600;//The amount of heat in kW
wc=Q2/(Cpc*(tc2-tc1));//The mass flow rate of water in kg/s

//Output
printf('(a) The rate of saving of condensate and the rate of saving in the heat supply in the boiler due to seperate air extraction pump = %3.3f kW \n (b) The percentage reduction in air ejector load due to this seperate air extraction method = %3.1f percent \n (c) The rate of cooling water flow = %3.0f kg/s ',Q3,V,wc)
