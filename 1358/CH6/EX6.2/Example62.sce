// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 6, Example 2")
disp("Enthalpy of dry saturated steam at 1.3MPa, using steam tables,")
h1 = 2787.6
s1 = 6.4953
disp("Since the expansion process is isentropic, s1 = s2 = sf2 + x2sfg2, hence dryness fraction after expansion:")
x2 = (s1-1.3026)/6.0568
disp("Now, the enthalpy at the exit:")
hf2=417.46;
hfg2 = 2258;
h2 = hf2+x2*hfg2
disp("Therefore enthalpy drop from 1.3 MPa to 0.1 MPa in kJ/kg")
drop = h1-h2
disp("Actual enthalpy drop due to friction loss in the nozzle droping in kJ/kg")
Droping = 0.9*drop
disp("Hence, the velocity of steam at the nozzle exit:")
C2 = (2*1000*Droping)^0.5
disp("Specific volume of steam at 0.1 MPa: in m3/kg")
vg2 = 1.694;
Specificv = x2*vg2
disp("(since the volume of the liquid is usually negligible compared to the volume of dry saturated vapor, hence for most practical problems, v = xvg)")
disp("Mass flow rate of steam at the nozzle exit: in kg/h")
m = (0.01^2)*%pi*C2/(4*x2*vg2) *3600
