// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 12 Example 11")
r_wire=3;//radius of electric wire in mm
k=0.16;//thermal conductivity in W/m oc
T_surrounding=45;//temperature of surrounding in degree celcius
T_surface=80;//temperature of surface in degree celcius
h=16;//heat transfer cooefficient in W/m^2 oc
disp("for maximum heat transfer the critical radius of insulation should be used.")
disp("critical radius of insulation(rc)=k/h in mm")
rc=k*1000/h
disp("economical thickness of insulation(t)=rc-r_wire in mm")
t=rc-r_wire
disp("so economical thickness of insulation=7 mm")
disp("heat convected from cable surface to environment,Q in W")
disp("Q=2*%pi*rc*L*h*(T_surface-T_surrounding)")
L=1;//length in mm
Q=2*%pi*rc*L*h*(T_surface-T_surrounding)*10^-3
disp("so heat transferred per unit length=35.2 W")
