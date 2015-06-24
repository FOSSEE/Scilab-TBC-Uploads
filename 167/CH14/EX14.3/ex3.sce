//example 3
// The Specific and Relative Humidity of Air
clear
clc
disp('The saturation pressure of water is 1.7057 kPa at 15C, and 3.1698 kPa at 25 C')
T1=25 //dry bulb temperature in Celsius
T2=15 //wet bulb temperature in Celsius
hg1=2546.5 //in kJ/kg
hf2=62.9822 //in kJ/kg
cp=1.005 //Constant pressure specific heatof air at room temp. in  kJ/kg-K
hfg2=2465.4 //in kJ/kg
P2=101.325 // Atmospheric pressure in kPa
Pg2=1.7057 //Saturation pressure of water at 15C in kPa
w2=0.622*Pg2/(P2-Pg2) //kg water/kg dry air
w1=(cp*(T2-T1)+w2*hfg2)/(hg1-hf2) //specific humidity
Pg1=3.1698 //Saturation pressure of water at 25C in kPa
o1=w1*P2/((0.622+w1)*Pg1) //relative huumidity
h1=cp*T1+w1*hg1 //enthalpy of air per unit mass of dry air
printf("\n Hence, the specific humidity is = %.5f kg H2o/kg dry air. \n",w1);
printf("\n The relative humidity = %.3f . \n",o1);
printf("\n The Enthalpy of air per unit mass of dry air is = %.1f kJ/kg dry air. \n",h1);