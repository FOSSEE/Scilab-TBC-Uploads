clear;
clc;
close;
disp("Example 7.1")
w=5600 //rpm
rm=0.5 //m
Ct2=145 //m/s
Um=w*2*%pi*rm/60 //Rotor tangential speed at pitchline in m/s
Ct1=0
dU=Ct2-Ct1
wc=Um*dU/1000 // in kJ/kg
tpm=rm*(dU)
disp(wc,"Specific work at pitchline in kJ/kg:")
disp(tpm,"Rotor torque per unit mass flow rate in m^2/s:")