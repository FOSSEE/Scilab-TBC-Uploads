// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 20")
P2=260.96;//saturation pressure at -5 degree celcius
P1=182.60;//saturation pressure at -15 degree celcius
vg=0.07665;//specific volume of gas at -10 degree celcius in m^3/kg
vf=0.00070//specific volume at -10 degree celcius in m^3/kg
R=0.06876;//gas constant in KJ/kg K
h_fg=156.3;//enthalpy in KJ/kg K
T2=(-5+273);//temperature in K
T1=(-15+273);//temperature in K
disp("by clapeyron equation")
disp("h_fg=T2*v_fg*(do/dT)_sat ")
disp("h_fg=T2*(vg-vf)*(deltaP/deltaT)in KJ/kg")
h_fg=T2*(vg-vf)*(P1-P2)/(T1-T2)
disp("by clapeyron-clausius equation,")
disp("log(P2/P1)_sat=(h_fg/R)*((1/T1)-(1/T2))_sat")
disp("log(P2/P1)=(h_fg/R)*((1/T1)-(1/T2))")
disp("so h_fg=log(P2/P1)*R/((1/T1)-(1/T2))in KJ/kg")
h_fg=log(P2/P1)*R/((1/T1)-(1/T2))
disp("% deviation from clapeyron equation in %")
(169.76-159.49)*100/159.49
disp("h_fg by clapeyron equation=159.49 KJ/kg")
disp("h_fg by clapeyron-clausius equation=169.76 KJ/kg")
disp("% deviation in h_fg value by clapeyron-clausius equation from the value from clapeyron equation=6.44%")
