clc;
clear;

printf('Example 13.4');

//Refer HUMIDITY ENTHALPY PLOT Figure 13.5 Page 748 as Humidity Chart
//According the given passes and situatuion
T = [325 301 308 312 315]        //[K]
H = [.005 .015 .022 .027 .032]    //[kg/kg]
//From Humidity Chart on humidifying to 60 percent humidity
Tw = [296 301 305 307]            //[K]

Hin = H(5)-H(1)            //[kg/kg] Increase in Humidity

printf('\n\n (a) The temperature of the material on each tray (in Kelvin)')
disp(Tw);
printf(' Thus the air leaving the system is at %i K and 60 per cent humidity.',T(5));

//From Humitidy Chart at the obtained leaving conditions
v = .893         //[m^3/kg] Specific Volume of dry air
vs = .968        //[m^3/kg] Specific Volume of Saturated air
vh = .937        //[m^3/kg] Humid Volume of air of 60 per cent humidity by Interpolation of Curve in Humidity Chart
x = 5        //[m^3/s] Amount of moist air leaves the dryer in (b)
m = x/vh        //[kg/s] Mass of air passing through the dryer
mw = m*Hin      //  [kg/s] Mass of water evaporated

printf('\n\n (b) If 5 m^3/s moist air leaves the dryer, The amount of water removed is %.3f kg/s.',mw)
Tb = 370            //[K] dry Bulb temperature corresponding to humidity of .005 kg/kg and wet-bulb temperature 307 K
printf('\n\n (c) The Temperature to which the inlet air would have to be raised to carry out the drying in single stage is %i K.',Tb)

//END