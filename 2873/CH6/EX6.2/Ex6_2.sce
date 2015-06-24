// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;

disp("Engineering Thermodynamics by Onkar Singh Chapter 6 Example 2")
disp("during throttling,h1=h2")
disp("at state 2,enthalpy can be seen for superheated steam using Table 4 at 0.05 Mpa and 100 degree celcius")
disp("thus h2=2682.5 KJ/kg")
h2=2682.5;
disp("at state 1,before throttling")
disp("hf_10Mpa=1407.56 KJ/kg")
hf_10Mpa=1407.56;
disp("hfg_10Mpa=1317.1 KJ/kg")
hfg_10Mpa=1317.1;
disp("h1=hf_10Mpa+x1*hfg_10Mpa")
h1=h2;//during throttling
disp("dryness fraction(x1)may be given as")
disp("x1=(h1-hf_10Mpa)/hfg_10Mpa")
x1=(h1-hf_10Mpa)/hfg_10Mpa


