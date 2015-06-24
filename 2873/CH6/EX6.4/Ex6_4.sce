// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;

disp("Engineering Thermodynamics by Onkar Singh Chapter 6 Example 4")
m=5;//mass of steam in kg
p=2;//pressure of steam in Mpa
T_superheat=(300+273.15);//temperature of superheat steam in K
Cp_water=4.18;//specific heat of water at constant pressure in KJ/kg K
Cp_superheat=2.1;//specific heat of superheat steam at constant pressure in KJ/kg K
disp("steam state 2 Mpa and 300 degree celcius lies in superheated region as saturation temperature at 2 Mpa is 212.42 degree celcius and hfg=1890.7 KJ/kg")
T_sat=(212.42+273.15);//saturation temperature at 2 Mpa in K
hfg_2Mpa=1890.7;
disp("entropy of unit mass of superheated steam with reference to absolute zero(S)in KJ/kg K")
disp("S=Cp_water*log(T_sat/273.15)+(hfg_2Mpa/T_sat)+(Cp_superheat*log(T_superheat/T_sat))")
S=Cp_water*log(T_sat/273.15)+(hfg_2Mpa/T_sat)+(Cp_superheat*log(T_superheat/T_sat))
disp("entropy of 5 kg of steam(S)in KJ/K")
disp("S=m*S")
S=m*S
