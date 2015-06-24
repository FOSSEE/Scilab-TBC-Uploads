// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 21")
disp("volume expansion=(1/v)*(dv/dT)_P")
disp("isothermal compressibility=-(1/v)*(dv/dp)_T")
disp("let us write dv/dT=deltav/deltaT and dv/dP=deltav/deltaP.The difference may be taken for small pressure and temperature changes.")
disp("volume expansivity in K^-1,")
disp("=(1/v)*(dv/dT)_300Kpa")
disp("=(1/v_300Kpa_300oc)*((v_350oc-v_250oc)/(350-250))_300Kpa")
disp("from steam tables,v_300Kpa_300oc=0.8753 in m^3/kg,v_350oc=0.9534 in m^3/kg,v_250oc=0.7964 in m^3/kg")
v_300Kpa_300oc=0.8753;//specific volume at 300Kpa and 300 degree celcius
v_350oc=0.9534;//specific volume 350 degree celcius
v_250oc=0.7964;//specific volume 250 degree celcius
(1/v_300Kpa_300oc)*(v_350oc-v_250oc)/(350-250)
disp("volume expansivity=1.7937*10^-3 K^-1")
disp("isothermal compressibility in Kpa^-1")
disp("=(-1/v_300Kpa_300oc)*((v_350Kpa-v_250Kpa)/(350-250))_300oc")
disp("from steam tables,v_300Kpa_300oc=0.8753 in m^3/kg,v_350Kpa=0.76505 in m^3/kg,v_250Kpa=1.09575 in m^3/kg")
v_350Kpa=0.76505;//specific volume 350 Kpa
v_250Kpa=1.09575;//specific volume 250 Kpa
(-1/v_300Kpa_300oc)*(v_350Kpa-v_250Kpa)/(350-250)
disp("so isothermal compressibility=3.778*10^-3 Kpa^-1")
