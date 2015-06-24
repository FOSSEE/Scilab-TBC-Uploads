clear;
clc;
close;
disp("Example 6.3")
T=298.16 //in K
dhf=-241827 //heat of formation of H2O(g in kJ.
n=1 //kmol
Qr=n*dhf //kJ/kmol
LHV=(-1)*Qr/2
disp(LHV,"LHV in kJ/kg:")
HHV=LHV+9*2443
disp(HHV,"HHV in kJ/kg:")