// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 11 Example 12")
omega=0.016;//specific humidity in gm/gm of air
disp("here pressure of atmospheric air(P)may be taken as 1.013 bar")
P=1.013;//pressure of atmospheric air in bar
disp("specific humidity,omega=0.622*(Pv/(P-Pv))")
disp("so partial pressure of vapour(Pv)in bar")
disp("Pv=P/(1+(0.622/omega))in bar ")
Pv=P/(1+(0.622/omega))
Pv=0.0254;//approx.
disp("relative humidity(phi)=(Pv/Pv_sat)")
disp("from pychrometric properties of air Pv_sat at 25 degree celcius=0.03098 bar")
Pv_sat=0.03098;
disp("so phi=Pv/Pv_sat")
phi=Pv/Pv_sat
disp("in percentage")
phi=phi*100
disp("so partial pressure of vapour=0.0254 bar")
disp("relative humidity=81.98 %")
