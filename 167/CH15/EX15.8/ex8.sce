//example 8
//Adiabatic Flame Temperature in Steady Combustion
clear
clc
hfC8H18=-249950 //in kJ/kmol
hfO2=0 //in kJ/kmol
hO2=8682 //in kJ/kmol
hfN2=0 //in kJ/kmol
hN2=8669 //in kJ/kmol
hfH2O=-241820 //in kJ/kmol
hH2O=9904 //in kJ/kmol
hfCO2=-393520 //in kJ/kmol
hCO2=9364 //in kJ/kmol
Hprod=8*hfCO2+9*hfH2O+47*hfN2 //in kJ
Hmol=Hprod/(8+9+47) //enthalpy per mole
disp('This enthalpy value corresponds to about 2650 K for N2, 2100 K for H2O, and 1800 K for CO2. But since, the majority of the moles are N2, we see that Tprod should be close to 2650 K, but somewhat under it.')
disp('For 2400 K, the value is higher than actual Hprod and for 2350 K, it is lower than that value.By interpolation, it comes out to be Tprod=2395 K')
Tprod=2395 //in K
printf("\n Hence,The adiabatic flame temperature for complete combustion with 100 percent theoretical air is=%.0f K. \n",Tprod);
disp('Similarily, the adiabatic flame temperature for complete combustion with 400 percent theoretical air is 962 K and with 90% theoretical air is 2236 K.')