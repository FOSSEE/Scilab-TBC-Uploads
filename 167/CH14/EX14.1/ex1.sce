//example 1
// the amonut of water vapour in room air
clear
clc
disp('The constant-pressure specific heat of air at room temperature is')
cp=1.005 //Constant Pressure Specific Heat of air at room temperature in kJ/kg · K 
T=25 //room temp. in Celsius
disp('For water at 25°C, we have ')
Pg=3.1698 //Saturation pressure in kPa
hg=2546.5 //Specific enthalpy  in kJ/kg
x=0.75 //humidity
Pv=x*Pg //Vapour pressure in kPa
P=100 // Pressure of air in room in kPa
Pa=P-Pv //partial pressure of dry air
w=(0.622*Pv)/(P-Pv) //specific humidity of air
h=cp*T+w*hg //enthalpy of dry air per unit mass
Ra=0.287 //gas constant for dry air in kPa-m^3/kg-K
Rv=0.4615 //gas constant for water vapour in kPa-m^3/kg-K
V=5*5*3 //volume of room in m^3
ma=(Pa*V)/(Ra*(T+273)) //mass of dry air 
mv=(Pv*V)/(Rv*(T+273)) //mass of water vapour
printf("\n Hence, the partial pressure of dry air is = %.2f kPa. \n",Pa);
printf("\n The specific humidity is = %.4f . \n",w);
printf("\n The enthalpy per unit mass of dry air is = %.1f kJ/kg dry air. \n",h);
printf("\n The mass of dry air is = %.2f kg. \n",ma);
printf("\n The mass of water vapour is = %.2f kg. \n",mv);